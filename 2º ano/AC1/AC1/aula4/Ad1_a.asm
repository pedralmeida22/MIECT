# registos
# p -> t0
# *p -> t1 

	.data
	.align 2
	.eqv SIZE,20
str:	.asciiz "Introduza uma string: "
	.eqv print_string,4
	.eqv read_string,8
	.text 
	.glob main
main:	
	la $a0, str
	syscall
	
	jr $ra	