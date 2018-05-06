.include "utils.asm"

.data

	outputDictBuffer:   .space  1
	outputCharBuffer:   .space  1
	newline:            .asciiz "\n"
	colon:              .asciiz ":"
	space:              .asciiz " "
	comma:              .asciiz ","
	outputDictFileName: .asciiz "out/dict.txt"
	outputFileName:     .asciiz "out/out.lzw"
	beginMain:          .asciiz "Starting main procedure\n"
	inputFileMessage:   .asciiz "Please enter the name of the file you want to compress:\n"
	inputFileName:      .space  80
	beginCompress:      .asciiz "Starting compression procedure\n"
	endCompress:        .asciiz "Compression is finished.\n"
	beginDict:          .asciiz "Writing output dictionary to \"out/dict.txt\":\n"
	beginOutput:        .asciiz "Writing compressed output file to \"out/out.lzw\"...\n"
	.align 2
	FP:                 .word   0
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
		pstr  beginMain
		pstr  inputFileMessage
		kbin  inputFileName
		
		fopen FP, inputFileName, 0
		jal countBytes
		sw $v0, fileSize
		fclose FP
		
		lw  $t0, fileSize
		sll $t1, $t0, 2
		malloc outputDict, $t1
		malloc outputChars, $t0
		
		fopen FP, inputFileName, 0
		jal compressData
		fclose FP
		
		jal writeDictFile
		jal writeOutputFile
		
		exit

	# $s0 = address to the output dictionary indexes
	# $s1 = address to the output 
	# $t0 = how many output value pairs were written
	# $t1 = temporary address holder
	# $t2 = current dict index
	# $t3 = current char
	writeOutputFile:
		addi $sp, $sp, -8 # writeOutputFile
		sw $s0, 4($sp)
		sw $s1, 8($sp)
		
		pstr beginOutput
		
		lw $s0, outputDict
		lw $s1, outputChars
		fopen FP, outputFileName, 1
		move $t0, $zero
		writeLZW:
			add $t1, $s1, $t0
			lb  $t3, ($t1)
			sll $t1, $t0, 2
			add $t1, $s0, $t1
			lw  $t2, ($t1)
			beq $t2, -1, writeOutputBreak
			sb  $t3, outputCharBuffer
			sb  $t2, outputDictBuffer
			fwrite outputDictBuffer, 1, FP
			fwrite outputCharBuffer, 1, FP
			addi $t0, $t0, 1
			j writeLZW
		writeOutputBreak:		
		lw $s1, 8($sp)
		lw $s0, 4($sp)
		addi $sp, $sp, +8
		jr $ra

	# $s0 = address to the output dictionary indexes
	# $s1 = address to the output 
	# $t0 = how many dict items were written
	# $t1 = temporary address holder
	# $t2 = current dict index
	# $t3 = current char
	writeDictFile:
		addi $sp, $sp, -8 # writeDictFile
		sw $s0, 4($sp)
		sw $s1, 8($sp)
		
		pstr beginDict
		
		lw $s0, outputDict
		lw $s1, outputChars
		fopen FP, outputDictFileName, 1
		move $t0, $zero
		writeDict:
			bge $t0, 256, writeDictBreak
			add $t1, $s1, $t0
			lb  $t3, ($t1)
			sll $t1, $t0, 2
			add $t1, $s0, $t1
			lw  $t2, ($t1)
			beq $t2, -1, writeDictBreak
			pint $t0
			intwrite $t0, FP
			pcharm colon
			fwrite colon, 1, FP
			pcharm space
			fwrite space, 1, FP
			pint $t2
			intwrite $t2, FP
			pcharm comma
			fwrite comma, 1, FP
			pcharm space
			fwrite space, 1, FP
			pchar $t3
			sb  $t3, outputCharBuffer
			fwrite outputCharBuffer, 1, FP
			newl
			fwrite newline, 1, FP
			addi $t0, $t0, 1
			j writeDict
		writeDictBreak:		
		lw $s1, 8($sp)
		lw $s0, 4($sp)
		addi $sp, $sp, +8
		jr $ra

	countBytes:
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
		
		pstr beginCompress
		
		move $t0, $zero
		lw $s0, outputDict
		lw $s1, outputChars
		whileCompress:
			fread nextChar, 1, FP
			beqz $v0, compressBreak
			lb $t2, nextChar
			move $t1, $zero
			move $t3, $zero
			whileDict:
				beq $t0, $t1, dictBreak #test if you finished testing current dict (if so, jump to dictBreak)
				sll $t4, $t1, 2
				add $t4, $s0, $t4
				lw  $t4, ($t4)          #load next dict index entry 
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
					fread nextChar, 1, FP  #load a new character from the file
					beqz $v0, compressBreak     #test if EOF (if so jump to compressBreak)
					lb $t2, nextChar
					addi $t1, $t1, 1	    #increment $t1
					j whileDict                 #go back to whileDict
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
		addi $t0, $t0, 1
		sll  $t6, $t0, 2
		add  $t6, $s0, $t6
		li   $t3, -1
		sw   $t3, ($t6)
		
		lw $s1, 8($sp)
		lw $s0, 4($sp)
		addi $sp, $sp, +8
		jr $ra
