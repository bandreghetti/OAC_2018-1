.include "utils.asm"

.data

	outputCharBuffer:    .space  1
	newline:            .asciiz "\n"
	beginMain:          .asciiz "Starting main procedure\n"
	inputFileMessage:   .asciiz "Please enter the name of the file you want to decompress:\n"
	inputFileName:      .space  80
	.align 2
	FP:            .word   0
	compressedData:     .word   0
	countBuffer:        .space  1024
	fileSize:           .word   0
	.align 2
	outputDict:         .word   0
	.align 2
	outputChars:        .word   0
	.align 2
	nextChar:           .space  1

.text
	# Main procedure
	main:
		#Just copied from lz78-Compress 
		pstr  beginMain
		pstr  inputFileMessage
		kbin  inputFileName
		
		#Just copied from lz78-Compress 
		fopen FP, inputFileName, 0
		jal countBytes
		sw $v0, fileSize
		fclose FP
		
		#Just copied from lz78-Compress 
		lw  $t0, fileSize
		sll $t1, $t0, 2
		malloc outputDict, $t1
		malloc outputChars, $t0
		
		fopen FP, inputFileName, 0
		jal decompressData
		fclose FP
		
		exit
		
	countBytes: #Just copied from lz78-Compress (Do we have to change this?)
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		fread countBuffer, 1024, FP
		beqz $v0, countBreak
		add $s0, $s0, $v0
		j countBytes
		countBreak:
		move $v0, $s0
		lw $s0, 0($sp)
		addi $sp, $sp, +4
		jr $ra
		
		
	# $s0 = address to the indexes
	# $s1 = address to the chars
	# $t0 = index for counting the number of line 
	# $t1 = index of the first line
	# $t2 = next char to read
	# $t4 = index for couting the chars of remaining sequence array
	# $t5 = used as temporary address to write remaining sequence array
	# $t6 = used as temporary address to write to chars and index arrays
	# $s7 = index used to run through the lines
	decompressData:
		addi $sp, $sp, -8
		sw $s0, 4($sp)
		sw $s1, 8($sp)
		move $t0, $zero
		lw $s0, outputDict
		lw $s1, outputChars
		whileDecompress:
		        	fread nextChar, 1, FP
				beqz $v0, decompressBreak
				lw $t2, nextChar 
				addi $t2, $t2, -48 #to solve ascii tabel problem (char 0 = decimal 48)
				beq $t2, 0, whileIndex0
				lw $t7, nextChar 
				addi $t7, $t7, -48
				j whileIndexNot0
			        whileIndex0: 
			        	   fread nextChar, 1, FP
			        	   beqz $v0, decompressBreak
			        	   addi $t0, $t0, 1
			        	   sll $t6, $t0, 2
			        	   add $t6, $s0, $t6
			        	   sw $t1, ($t6) #Save in index array
 			        	   lw $t2, nextChar
			        	   pchar $t2
			        	   add $t6, $s1, $t0
			        	   sb $t2, ($t6) #Save in char array
			        	   j whileDecompress
			        	  
			        whileIndexNot0:	
			        	   	  addi $t0, $t0, 1
			        	   	  sll $t6, $t0, 2
			        	   	  add $t6, $s0, $t6
			        	   	  sw $t2, ($t6) #Save in index array
			        	   	  addi $t4, $t0, 0 
			        	   	  fread nextChar, 1, FP 
			        	   	  lb $t2, nextChar
			        	   	  lb $t1, newline
			        	   	  beq $t2, $t1, IndexNot0
			        	   	  add $t6, $s1, $t0
			        	   	  sb $t2, ($t6) #Save in char array
			    			  addi $t4, $t4, 1
			        		  add $t5, $s1, $t4
			        		  sb $t2, ($t5) #Save in remaining sequence array
			        		  bne $t7, $zero, IndexNot0  
			        		  pchar $t5
			        		  j whileDecompress 
			        		  Index0: 
			        	   	  	PrintRest:#print vector from backwards
			        	   			beq $t4, $t0, whileDecompress
			        	   			add $t5, $s1, $t4
			        		  		lb $t2, ($t5)
			        	   			pchar $t2
			        	   			addi $t4, $t4, -1
			        	   			j PrintRest
			        	   	 IndexNot0:

			        	   	 	   add $t6, $s1, $t7 
			        	   	 	   lb $t2, ($t6) #Find char in index line  
			        	   	 	   addi $t4, $t4, 1
			        		 	   add $t5, $s1, $t4
			        		 	   sb $t2, ($t5) #Save in remaining sequence array
			        		 	   sll $t6, $t7, 2
			        	   	 	   add $t6, $s0, $t6
			        	   	 	   lw $t7, ($t6) #Find next index line
			        	   	 	   bne $t7, $zero, IndexNot0
			        	   	 	   j Index0		 
			        decompressBreak: #copied from lz78-compress
			        newl
				addi $t0, $t0, 1
				sll  $t6, $t0, 2
				add  $t6, $s0, $t6
				li   $t3, -1
				sw   $t3, ($t6)
			        lw $s1, 8($sp)
				lw $s0, 4($sp)
				addi $sp, $sp, +8
				jr $ra
