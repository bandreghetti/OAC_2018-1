.data

	string:     .asciiz "String: "
	hex:        .asciiz "Hex:    "
	beginMain:  .asciiz "Starting main procedure"
	endProgram: .asciiz "Exiting"
	newLine:    .asciiz "\n"
	
.text
	main:	# Main procedure
		la   $a0, beginMain
		jal  print_string

		# Your code goes in here
		
		j exit

	print_hex:
		# Save $v0 to the stack
		addi $sp, $sp, -4
		sw   $v0, 0($sp)
		# Effectively print the hexadecimal value
		li   $v0, 4
		move $t1, $a0
		la   $a0, hex
		syscall
		li   $v0, 34
		move $a0, $t1
		syscall
		li   $v0, 4
		la   $a0, newLine
		syscall
		# Restores initial register states
		move $a0, $t1
		lw   $v0, 0($sp)
		addi $sp, $sp, 4
		jr   $ra

	print_string:  # Print null terminated string from $a0 address
		# Save $v0 to the stack
		addi $sp, $sp, -4
		sw   $v0, 4($sp)
		# Effectively print the string
		li   $v0, 4
		move $t1, $a0
		la   $a0, string
		syscall
		move $a0, $t1
		syscall
		la   $a0, newLine
		syscall
		# Restores initial register states
		move $a0, $t1
		lw   $v0, 0($sp)
		addi $sp, $sp, 4
		jr   $ra

	exit:	# Terminate the program
		la   $a0, endProgram
		jal  print_string
		li   $v0, 10
		syscall