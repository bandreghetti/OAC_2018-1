.macro kbin %input_address
	li $v0, 8	# Keyboard Input Macro
	la $a0, %input_address
	li $a1, 79
	syscall
	move $t0, $a0
	while:
		lb $t1, ($t0)
		beq $t1, '\n', breakloop
		addi $t0, $t0, 1
		j while
	breakloop:
		li $t2, '\0'
		sb $t2, ($t0)		
.end_macro

# Print hex in %reg
.macro phex %reg
	move $t9, $a0    # Print Hex Macro
	li   $v0, 34
	move   $a0, %reg
	syscall
	move $a0, $t9
.end_macro

.macro phexm %address
	move $t9, $a0    # Print Hex from Memory Macro
	li   $v0, 34
	lw   $a0, %address
	syscall
	move $a0, $t9
.end_macro

# Print null terminated (.asciiz) string
.macro pstr %str
	move $t9, $a0    # Print String Macro
	li   $v0, 4
	la   $a0, %str
	syscall
	move $a0, $t9
.end_macro

# Print char in %reg
.macro pchar %reg
	move $t9, $a0    # Print Char from Register Macro
	li   $v0, 11
	move $a0, %reg
	syscall
	move $a0, $t9
.end_macro

# Print char from memory %address
.macro pcharm %address
	move $t9, $a0    # Print Char from Memory Macro
	li   $v0, 11
	lb   $a0, %address
	syscall
	move $a0, $t9
.end_macro

# Print a \n to the console
.macro newl
	move $t9, $a0    # Print \n Macro
	li   $v0, 11
	li   $a0, '\n'
	syscall
	move $a0, $t9
.end_macro
