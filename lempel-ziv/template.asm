.include "printutils.asm"

.data

	beginMain:  .asciiz "Starting main procedure\n"
	endProgram: .asciiz "Exiting\n"
	
.text
	# Main procedure
	main:
		pstr beginMain

		# Your code goes in here
		
		exit
