.include "memutils.asm"
.include "fileutils.asm"
.include "ioutils.asm"

.data
	endProgram:       .asciiz "Exiting.\n"
	errorMessage:     .asciiz "Exiting with Error Code: "

# Terminate the program
.macro exit
	pstr endProgram  # Terminate Program Macro
	li   $v0, 10
	syscall
.end_macro

# Terminate the program with an error
.macro error %errval
	pstr errorMessage  # Error Exit Macro
	
	li   $v0, 1
	li   $a0, %errval
	syscall
	newl
	
	li   $v0, 17
	li   $a0, %errval
	syscall
.end_macro

.macro nbits %regout %regin
	move %regout, $zero
	move $t8, %regin
	whileNbits:
		beqz $t8, breakNbits
		srl $t8, $t8, 1
		addi %regout, %regout, 1
		j whileNbits
		breakNbits:
.end_macro