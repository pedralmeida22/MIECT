	.data
str:	.asciiz "Arquitetura de Computadores I"
	.eqv print_int10,1
	.text 
	.globl main
main:	subu $sp,$sp,4
	sw $ra,0($sp)
	la $a0,str
	jal strlen
	move $a0,$v0 	# a0 = strlen(str);
	li $v0, print_int10
	syscall 
	li $v0,0	# return
	lw $ra,0($sp)
	addu $sp,$sp,4
	jr $ra	
	
strlen: li $t1,0 		# len = 0;
while: 	lb $t0,0($a0) 		# while(*s++ != '\0')
 	addiu $a0,$a0,1 	#
	beq $t0,'\0',endw 	# {
 	addi $t1,$t1,1 		# len++;
	j while			# }
endw:	move $v0,$t1 		# return len;
	jr $ra