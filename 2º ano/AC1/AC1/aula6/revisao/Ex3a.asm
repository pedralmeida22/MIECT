strcpy:	li $t0,0 		# i = 0
do:	addu $t1,$a0,$t0	# t1 = &src[i]
	addu $t2,$a0,$t0	# t2 = &dst[i]
	lw $t3,0($t2)
	sw $t3,0($t1)
	addi $t0,$t0,4		# i++
while:	bne $t3,'\0',do
	move $v0,$a0		# return *dst
	jr $ra
	
