#Mapa de registos
# p       : $t0
# *p      : $t1
# pultimo : $t2

	.data
array:	.word str1,str2,str3
str1:	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
	.eqv print_string,4
	.eqv print_char,11
	.eqv SIZE,3
	
	.text 
	.globl main
main:
	la $t0,array
	li $t3,SIZE
	sll $t3,$t3,2
	addu $t2,$t0,$t3
for:	bge $t0,$t2,endfor
	lw $t1,0($t0)
	move $a0,$t1
	li $v0,print_string
	syscall
	li $a0,'\n'
	li $v0,print_char
	syscall
	addi $t0,$t0,4
	j for
endfor:
	jr $ra
