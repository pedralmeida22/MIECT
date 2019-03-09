# mapa de registos
# $a0 - *array
# $a1 - value
# $a2 - pos
# $a3 - size
# $t0 - i
# $t1 - array[i]
# $t3 - array[pos]

insert:
if:	ble $a2,$a3,else	# if(pos > size)
	li $v0,1		# return 1
else:	
	sub $t0,$a3,1		# i = size-1
for:
	blt $t0,$a2,endfor
	sll $t4,$t0,2		# t4 = i * 4
	add $t1,$a0,$t4		# t3 = array[i]
	lw $t2,0($t1)
	add $t1,$t1,4		# array[i+1]
	sw $t2,0($t1)		# array[i+1] = array[i]; 
	subi $t0,$t0,1		# i--
endfor:
	sll $a2,$a2,2
	add $t3,$a2,$a0
	sw $a1,0($t3)
	
	li $v0,0
endif:	
	jr $ra
	
############################################################

# mapa de registos
# $a0 - *a
# $a1 - n
# $t0 - *p
# $t1 - a

print_array:
	add $t0,$a0,$a1		# *p = a + n
	move $t2,$a0
for:
	bgt $t2,$t0,endfor
	lw $a0,0($t2)
	li $v0,print_int
	syscall
	
	la $a0,str
	li $v0,print_str
	syscall
	
	add $t2,$t2,4
	j for
endfor:
	jr $ra
	
	
	
	

	
