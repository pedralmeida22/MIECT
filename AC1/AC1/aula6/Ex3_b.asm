# desisto......................................
	.data
	.eqv STR_MAX_SIZE,30
str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
str2:	.space 31
str3:	.asciiz "\n"
str4:	.asciiz "String too long: "
	.eqv print_str,4
	.eqv print_int,1
	.text 
	.globl main
main:	
	subu $sp,$sp,4
	sw $ra,0($sp)
	
	la $a0,str1
	jal strlen
	move $s0,$v0
if:	bgt $s0,STR_MAX_SIZE,else
	la $a0,str2
	la $a1,str1
	jal strcpy		# strcpy(str2, str1)
	la $a0,str2
	li $v0,print_str
	syscall			# print_string(str2)
	
	la $a0,str3
	li $v0,print_str
	syscall			# print_string(\n)
	
	la $a0,str2
	jal strrev		# strrev(str2)
	move $a0,$v0
	li $v0,print_str
	syscall			# print_str(strrev(str2))
	
	li $t0,0		# exit_value = 0; 
	j endif
else:
	la $a0,str4
	li $v0,print_str
	syscall	 		# print_string("String too long: "); 
	
	la $a0,str1
	jal strlen
	move $a0,$v0
	li $v0,print_int	# print_int10(strlen(str1)); 
	syscall
	li $t0,-1		# exit_value = -1; 
endif:
	move $v0,$t0
	lw $ra,0($sp)
	jr $ra

#################################################

strlen: li $t1,0 		# len = 0;
while: 	lb $t0,0($a0) 		# while(*s++ != '\0')
 	addiu $a0,$a0,1 	#
	beq $t0,'\0',endw 	# {
 	addi $t1,$t1,1 		# len++;
	j while			# }
endw:	move $v0,$t1 		# return len;
	jr $ra
	
###################################################
	
strcpy:	li $t0,0 		# i = 0
do:	add $t1,$a0,$t0	# t1 = &src[i]
	add $t2,$a1,$t0	# t2 = &dst[i]
	lb $t3,0($t2)
	sb $t3,0($t1)
	addi $t0,$t0,4		# i++
whilestrcpy:
	bne $t3,'\0',do
	move $v0,$a0		# return *dst
	jr $ra


####################################################


# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
#
strrev: subu $sp,$sp,16 	# reserva espaço na stack
 	sw $ra,0($sp) 		# guarda endereço de retorno
 	sw $s0,4($sp) 		# guarda valor dos registos
 	sw $s1,8($sp) 		# $s0, $s1 e $s2
 	sw $s2,12($sp) 		#
 	move $s0,$a0 		# registo "callee-saved"
 	move $s1,$a0 		# p1 = str
 	move $s2,$a0 		# p2 = str
 	lb $t0,0($s2)		# $t0 = *p2
while1: beq $t0,'\0',endw1	# while( *p2 != '\0' ) {
 	addi $s2,$s2,1		# p2++;
 	j while1 		# }
endw1:
 	subi $s2,$s2,1		# p2--;
while2: bgeu $s1,$s2,endw2	# while(p1 < p2) {
 	move $a0,$s1 		#
 	move $a1,$s2 		#
 	jal exchange 		# exchange(p1,p2);
 	addi $s1,$s1,1		# p1++;
 	subi $s2,$s2,1		# p2--;
 	j while2		# }
endw2:
 	move $v0,$s0 		# return str
 	lw $ra,0($sp) 		# repõe endereço de retorno
 	lw $s0,4($sp) 		# repõe o valor dos registos
 	lw $s1,8($sp) 		# $s0, $s1 e $s2
 	lw $s2,12($sp) 		#
 	addu $sp,$sp,16		# liberta espaço da stack
 	jr $ra 			# termina a sub-rotina

 	
exchange:
	lb $t0,0($a0)		# t0 = *c1
	lb $t1,0($a1)		# t1 = *c2
	
	sb $t0,0($a1)
	sb $t1,0($a0)
	
	jr $ra
