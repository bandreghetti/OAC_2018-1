.include "utils.asm"

.data
	beginMain:        .asciiz "Starting main procedure\n"

.text
	# Main procedure
	main:
		pstr  beginMain

		# Your code goes in here
		
		exit