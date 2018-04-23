.data
	byteBuffer:  .space 1

.macro fopen %fp, %filename, %mode
	li $v0, 13 # File Open
	la $a0, %filename
	li $a1, %mode
	li $a2, 0
	syscall
	sw $v0, %fp
.end_macro

.macro fclose %fp
	li $v0, 16 # File Close
	lw $a0, %fp
	syscall
.end_macro

.macro fread %buffer, %numbytes, %fp
	li $v0, 14 # File Read
	lw $a0, %fp
	la $a1, %buffer
	li $a2, %numbytes
	syscall
.end_macro

.macro fwrite %buffer, %numbytes, %fp
	li $v0, 15 # File Write
	lw $a0, %fp
	la $a1, %buffer
	li $a2, %numbytes
	syscall
.end_macro

.macro intwrite %reg, %fp
	addi $sp, $sp, -12 # Int Write
	sw $t6, 4($sp)
	sw $t7, 8($sp)
	sw $t5, 12($sp)
	move $t6, %reg
	li $v0, 15
	lw $a0, %fp
	la $a1, byteBuffer
	li $a2, 1
	li $t7, 1000000000
	move $t5, $zero
	whileIntWrite:
		beqz $t7, breakIntWrite
		div  $t9, $t6, $t7
		beqz $t9, remZero
		notLeftZero:
		addi $t9, $t9, 48
		li $t5, 1
		sb   $t9, byteBuffer
		addi $t9, $t9, -48
		syscall
		li   $v0, 15
		j avoidBranch
		remZero:
		bnez $t5, notLeftZero
		avoidBranch:
		mul  $t8, $t7, $t9
		sub  $t6, $t6, $t8
		li   $t8, 10
		div  $t7, $t7, $t8
		j whileIntWrite
	breakIntWrite:
	bnez $t5, avoidZero
	li $t9, 48
	sb $t9, byteBuffer
	syscall
	avoidZero:
	lw $t5, 12($sp)
	lw $t7, 8($sp)
	lw $t6, 4($sp)
	addi $sp, $sp, +8	
.end_macro
