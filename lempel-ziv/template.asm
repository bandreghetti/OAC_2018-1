.data

	beginMain: .asciiz "Starting main procedure\n"

	endProgram: .asciiz "Exiting\n"
	
.text
	main:	# Main procedure
		la   $a0, beginMain
		jal  print_string

		# Your code goes in here

		j exit

	print_string:  # Print null terminated string from $a0 address
		addi $sp, $sp, -4
		sw   $v0, 0($sp)
		li   $v0, 4
		syscall
		lw   $v0, 0($sp)
		addi $sp, $sp, 4
		jr   $ra

	exit:	# Terminate the program
		la   $a0, endProgram
		jal  print_string
		
		li   $v0, 10
		syscall