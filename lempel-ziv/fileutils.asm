.macro fopen %fp, %filename, %mode
	li $v0, 13 # File Open
	la $a0, %filename
	li $a1, %mode
	li $a2, 0
	syscall
	sw $v0, %fp
.end_macro

.macro fread %buffer, %numbytes, %fp
	li $v0, 14 # File Read
	lw $a0, %fp
	la $a1, %buffer
	li $a2, %numbytes
	syscall
.end_macro