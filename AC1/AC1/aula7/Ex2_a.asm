# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina interm�dia

itoa:	subu $sp,$sp,20		# reserva espa�o na stack
 	sw $s0,0($sp) 		# guarda registos $sx e $ra
 	sw $s1,4($sp)
 	sw $s2,8($sp)
 	sw $s3,12($sp)
 	sw $ra,16($sp)
 	move $s0,$a0 		# copia n, b e s para registos
 	move $s1,$a1		# "callee-saved"
 	move $s2,$a2
 	move $s3,$a2 		# p = s;
do: 				# do {
 	rem $t0,$s0,$s1
 	div $s0,$s0,$s1		#
 	jal toascii
 	sb $v0,0($s3)		# *p = toascii
 	addiu $s3,$s3,1
 	bgt $s0,$0,do		# } while(n > 0);	
 	sb $0,0($s3) 		# *p = 0;
 	 			#
 	move $a0,$s2
 	jal strrev 		# strrev( s );
 	move $v0,$s2		# return s;
 	lw $s0,0($sp) 		# guarda registos $sx e $ra
 	lw $s1,4($sp)
 	lw $s2,8($sp)
 	lw $s3,12($sp)
 	lw $ra,16($sp) 		# rep�e registos $sx e $ra
 	addu $sp,$sp,20		# liberta espa�o na stack
 	jr $ra 			# 
 	

toascii:
	...
 	

 	
 	
# Mapa de registos:
# str: $a0 -> $s0 (argumento � passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
#
strrev: subu $sp,$sp,16 	# reserva espa�o na stack
 	sw $ra,0($sp) 		# guarda endere�o de retorno
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
 	subiu $s2,$s2,1		# p2--;
while2: bgeu $s1,$s2,endw2	# while(p1 < p2) {
 	move $a0,$s1 		#
 	move $a1,$s2 		#
 	jal exchange 		# exchange(p1,p2);
 	addiu $s1,$s1,1		# p1++;
 	subiu $s2,$s2,1		# p2--;
 	j while2		# }
endw2:
 	move $v0,$s0 		# return str
 	lw $ra,0($sp) 		# rep�e endere�o de retorno
 	lw $s0,4($sp) 		# rep�e o valor dos registos
 	lw $s1,8($sp) 		# $s0, $s1 e $s2
 	lw $s2,12($sp) 		#
 	addu $sp,$sp,16		# liberta espa�o da stack
 	jr $ra 			# termina a sub-rotina
 	
exchange:
	lb $t0,0($a0)		# t0 = *c1
	lb $t1,0($a1)		# t1 = *c2
	
	sb $t0,0($a1)
	sb $t1,0($a0)
	
	jr $ra
	