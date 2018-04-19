# Allocate %size bytes of memory and save address at %pointer
# Maybe use sbrk syscall instead?
.macro malloc %pointer, %size
	sw  $gp, %pointer    # Malloc macro
	add $gp, $gp, %size
.end_macro
