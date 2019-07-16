# Mapa de registos
# array : $t0
# i     : $t1
# j     : $t2

	.data
array:	.word str1,str2,str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\nString #"
str5:	.asciiz ": "
	.eqv print_int,1
	.eqv print_string,4
	.eqv print_char,11
	.eqv SIZE,3
	.text
	.globl main
main:	
	li $t1,0		# i = 0
for:	bge $t1,SIZE,endf	# for(...){
	la $a0,str4
	li $v0,print_string
	syscall			# print_string("String #")
	move $a1,$t1
	li $v0,print_int
	syscall			# print_int(i)
	la $a0,str5
	li $v0,print_string
	syscall			# print_string(": ")
	li $t2,0		# j = 0
	la $t0,array
 	sll,$t3,$t1,2		# t3 = i * 4
	addu $t3,$t3,$t0	# t3 = &array[i]
	lw $t4,0($t3)		# t4 = array[i]
while:	add $t5,$t4,$t2		# t5 = &(array[i])[j]
	lb $t6,0($t5)		# t6 = array[i][j]
	beq $t6,'\0',endw
	move $a0,$t6
	li $v0,print_char
	syscall
	
	li $a0,'-'
	li $v0,print_char
	syscall			# print_char('-')
	addi $t2,$t2,1		# j++
	j while	
endw:
	addi $t1,$t1,1		# i++
	j for
endf:
	jr $ra
