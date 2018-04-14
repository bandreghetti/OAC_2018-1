.data

	beginMain:  .asciiz "Starting main procedure\n"
	endProgram: .asciiz "Exiting\n"
	newLine:    .asciiz "\n"
	
.text
	main:	# Main procedure
		la   $a0, beginMain
		jal  print_string

		# Your code goes in here
		
		j exit

	print_hex: # Print value from %a0 address in hexadecimal format
		li   $v0, 34
		syscall
		jr   $ra

	print_string: # Print null terminated string from $a0 address
		li   $v0, 4
		syscall
		jr   $ra

	new_line:
		li   $v0, 11
		li   $a0, '\n'
		syscall
		jr   $ra

	exit:	# Terminate the program
		la   $a0, endProgram
		jal  print_string
		li   $v0, 10
		syscall
