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
		
		malloc outputDict, $v0
		malloc outputChars, $v0
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
		addi $sp, $sp +4
		jr $ra

	compressData:
		
		move $t0, $zero
		whileCompress:
		fread nextChar, 1, inputFP
		beqz $v0, compressBreak
		
			
		
		compressBreak:
