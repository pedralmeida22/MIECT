# mapa de registos
# p:  $s0
# c:  $s1
# n:  $s2
# *p: $a0

count:	
	subu $sp,$sp,16
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	move $s0,$a0
	move $s1,$a1
	li $s2,0		# n = 0
while:	lb $a0,0($s0)
	beq $a0,'\0',endw
	move $a1,$s1
	jal isn			# isn(*p, c)
	add $s2,$s2,$v0		# n = n + isn(*p, c); 
	addi $s0,$s0,1		# p++; 
	j while
endw:
	move $v0,$s2		# return n; 
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addu $sp,$sp,16
	
	jr $ra