# mapa de registos
# $t0 : p
# $t1 : *p

strcat:
	move $t0,$a0
while:	lb $t1,0($t0)
	beq $t1,'\n',endw
	addi $t0,$t0,1
endw:
	subu $sp,$sp,8
	sw $ra,0($sp)
	sw $a0,4($sp) 
	move $a0,$t0
	jal strcpy
	lw $ra,0($sp)
	lw $a0,4($sp)
	addu $sp,$sp,8
	move $v0,$a0
	jr $ra
	
	
######################################################	
	
strcpy:	li $t0,0 		# i = 0;

do:	addu $t1,$a1,$t0 	# t1 = &src[i]
	addu $t2,$a0,$t0 	# t2 = &dst[i]
	lb $t3,0($t1)    	# t3 = src[i];
	sb $t3,0($t2)    	# dst[i] = t3
	addi $t0,$t0,1		# i++
	bne $t3,'\n',do
	move $v0,$a0  		# return dst
	jr $ra
