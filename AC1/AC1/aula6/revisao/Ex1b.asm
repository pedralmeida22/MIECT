	.data
str:	.asciiz "Arquitetura de Computadores I"
	.eqv print_int,1
	.text 
	.globl main
main:	subu $sp,$sp,4
	sw $ra,0($sp)
	la $a0,str
	jal strlen
	move $a0,$v0
	li $v0,print_int
	syscall
	li $v0,0
	lw $ra,0($sp)
	addu $sp,$sp,4
	jr $ra
	
	
	
	
strlen: li $t1,0 		# len = 0;
while:	lb $t0,0($a0)
	addiu $a0,$a0,1 	# while(*s++ != '\0')
 	beq $t0,'\0',endw 	# {
 	addi $t1,$t1,1 		# len++;
 	j while 		# }
endw: 	move $v0,$t1 		# return len;
 	jr $ra 			# 