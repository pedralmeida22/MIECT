# mapa de registos
# nodd: $t0
# i   :	$t1
	
	.data
	.eqv SIZE,7
val:	.word 8,4,15,-1987,9,27,16
odd:	.space 28
	.eqv print_str,4
	.eqv print_int,1
str:	.asciiz "Result is:"
	.text 
	.globl main
main:	
	subu $sp,$sp,4
	sw $ra,0($sp)
	la $a0,val
	li $a1,SIZE
	la $a2,odd
	jal splito
	move $t0,$v0	# nodd = splito( val, SIZE, odd ); 
	la $a0,str
	li $v0,print_str
	syscall		# print_string("Result is:"); 
	li $t1,0	# i = 0
for:	bge $t1,$t0,endfor
	la $t2,odd
	sll $t1,$t1,2	# i * 4
	add $t3,$t2,$t1	# odd[i]
	lw $a0,0($t3)
	li $v0,print_int
	syscall		# print_int10( odd[i] ); 
	addi $t1,$t1,1	# i++
	j for
endfor:
	li $v0,1	# return 1
	
	lw $ra,0($sp)
	addu $sp,$sp,4
	
	jr $ra
	