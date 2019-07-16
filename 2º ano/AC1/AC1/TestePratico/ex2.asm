# mapa de registos:
# a: $a0
# N: $a1
# p_odd: $a2
# n_even: $t0 
# p: $t1
# *p: $t2

split_odd:
	li $t0,0
	sll $a1,$a1,2
	add $t3,$a0,$a1
	move $t1,$a0
for:	lw $t2,0($t1)
	bge $t1,$t3,endfor
	rem $t4,$t2,2
if:	beq $t4,0,else
	sw $t2,0($a2)
	addi $a2,$a2,4
	j endif
else:
	addi $t0,$t0,1
endif:	
	addi $t1,$t1,4
	j for
endfor:
	sub $t5,$a1,$t0
	move $v0,$t5
	
	jr $ra
	
	
	