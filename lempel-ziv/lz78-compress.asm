.include "utils.asm"

.data

	beginMain:        .asciiz "Starting main procedure\n"
	inputFileMessage: .asciiz "Please enter the name of the file you want to compress:\n"
	inputFileName:    .space  80
	.align 2
	inputFP:          .word   0
	.align 2
	nextChar:         .space  1
	got: .asciiz "Got: "

.text
	# Main procedure
	main:
		pstr  beginMain
		pstr  inputFileMessage
		kbin  inputFileName
		
		fopen inputFP, inputFileName, 0
		
	while:
		fread nextChar, 1, inputFP
		beqz $v0, loopbreak
		pcharm nextChar
		j while
	loopbreak:
		newl
		
		exit
