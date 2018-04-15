# Print hex in %reg
.macro phex %reg
	move $t9, $a0
	li   $v0, 34
	move   $a0, %reg
	syscall
	move $a0, $t9
.end_macro

# Print null terminated (.asciiz) string
.macro pstr %str
	move $t9, $a0
	li   $v0, 4
	la   $a0, %str
	syscall
	move $a0, $t9
.end_macro

# Print a \n to the console
.macro newl
	move $t9, $a0
	li   $v0, 11
	li   $a0, '\n'
	syscall
	move $a0, $t9
.end_macro

# Terminate the program
.macro exit
	pstr endProgram
	li   $v0, 10
	syscall
.end_macro