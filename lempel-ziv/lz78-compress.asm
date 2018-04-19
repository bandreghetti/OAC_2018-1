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
		
		malloc outputChars, $v0
		sll $v0, $v0, 2
		malloc outputDict, $v0
		fopen inputFP, inputFileName, 0
		
		 
	#while:
	#	fread nextChar, 1, inputFP
	#	beqz $v0, loopbreak
	#	pcharm nextChar
	#	j while
	#loopbreak:
	#	newl
		
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
	# $t0 = index for counting how many file characters the procedure has processed
	# $t1 = index for counting how many dictionary indexes were checked
	# $t2 = next char to compress
	# $t3 = current output dictionary index to save to outputDict
	# $t4 = current dict index address to test against $t3 (temporarily it holds the address to load itself)
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
				add $t4, $s0, $t1
				sll $t4, $t4, 2
				lw  $t4, ($t4)
				#if $t3 equals $t4 (current output index equals tested dict index)
				#test if the char corresponding to that index is the same as $t2
				#if so,
					#save dict index to $t3
					#download a new character from the file (using fopen)
					#test if EOF (if so jump to compressBreak)
					#increment $t1
					#go back to whileDict
				#if not,
					#increment $t1
					#go back to whileDict
			dictBreak:
		compressBreak:
		sw $s1, 8($sp)
		sw $s0, 4($sp)
		addi $sp, $sp, +8
