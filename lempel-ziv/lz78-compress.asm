.include "utils.asm"

.data

	beginMain:        .asciiz "Starting main procedure\n"
	inputFileMessage: .asciiz "Please enter the name of the file you want to compress:\n"
	inputFileName:    .space  80
	.align 2
	inputFP:          .word   0
	compressedData:   .word   0
	countBuffer:      .space  1024
	fileSize:         .word   0
	.align 2
	outputDict:       .word   0
	.align 2
	outputChars:      .word   0
	.align 2
	nextChar:         .space  1

.text
	# Main procedure
	main:
		pstr  beginMain
		pstr  inputFileMessage
		kbin  inputFileName
		
		fopen inputFP, inputFileName, 0
		jal countBytes
		sw $v0, fileSize
		fclose inputFP
		
		sll $t0, $v0, 2
		malloc outputDict, $t0
		malloc outputChars, $v0
		
		fopen inputFP, inputFileName, 0
		jal compressData
		fclose inputFP
		
		
		
		exit

	countBytes:
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		fread countBuffer, 1024, inputFP
		beqz $v0, countBreak
		add $s0, $s0, $v0
		j countBytes
		countBreak:
		move $v0, $s0
		lw $s0, 0($sp)
		addi $sp, $sp, +4
		jr $ra

	# $s0 = address to the output dictionary indexes
	# $s1 = address to the output chars
	# $t0 = index for counting the size of the dictionary
	# $t1 = index for counting how many dictionary indexes were checked
	# $t2 = next char to compress
	# $t3 = current output dictionary index to save to outputDict
	# $t4 = current dict index address to test against $t3 (temporarily it holds the address to load itself)
	# $t5 = char correponding to current dict index being tested (temporarily it holds the address to load itself)
	# $t6 = used as temporary address to write to outputChars and outputDict arrays
	compressData:
		addi $sp, $sp, -8
		sw $s0, 4($sp)
		sw $s1, 8($sp)
		move $t0, $zero
		lw $s0, outputDict
		lw $s1, outputChars
		whileCompress:
			fread nextChar, 1, inputFP
			beqz $v0, compressBreak
			lb $t2, nextChar
			move $t1, $zero
			move $t3, $zero
			whileDict:
				beq $t0, $t1, dictBreak 
				sll $t4, $t1, 2
				add $t4, $s0, $t4
				lw  $t4, ($t4)
				beq $t3, $t4, dictEqual #if $t3 equals $t4 (current output index equals tested dict index)
				addi $t1, $t1, 1
				j whileDict	
				dictEqual:
					add $t5, $s1, $t1
					lb  $t5, ($t5)
					beq $t2, $t5, charEqual #test if the char corresponding to dict index $t1 is the same as $t2
					                        #if not,
					addi $t1, $t1, 1            #increment $t1
					j whileDict                 #go back to whileDict
					charEqual:              #if so,
					move $t3, $t1               #save t1 to $t3
					fread nextChar, 1, inputFP  #load a new character from the file
					beqz $v0, compressBreak     #test if EOF (if so jump to compressBreak)
					lb $t2, nextChar
					addi $t1, $t1, 1
					j whileDict
			dictBreak:
			pint  $t3
			pchar $t2
			addi $t0, $t0, 1
			add  $t6, $s1, $t0
			sb   $t2, ($t6)
			sll  $t6, $t0, 2
			add  $t6, $s0, $t6
			sw   $t3, ($t6)
			j whileCompress
		compressBreak:
		newl
		sw $s1, 8($sp)
		sw $s0, 4($sp)
		addi $sp, $sp, +8
		jr $ra
