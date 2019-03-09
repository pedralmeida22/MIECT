# registos
# i    : $t0
# array : $t1
# aux  : $t2
# soma : $t3

	
	.data
array:	.word 7692,23,5,234    	# declarar array de 4 posicoes e inicializa-o
 	.eqv print_int10,1
 	.eqv SIZE,4
 	.text
 	.globl main

main:	li $v0,0
	li $t0,0
	la $t1, array
for:	bge $t0,SIZE,endfor
	sll $t2,$t0,2		# t2 = i * 4
	addu $t2,$t2,$t1	# $t2 = &array[i]
	lw $t4,0($t2)
	add $t3,$t3,$t4		# soma = soma + array[i]
	addi $t0,$t0,1		# i++
	j for
endfor:
	move $a0,$t3
	li $v0, print_int10
	syscall
	
	jr $ra
