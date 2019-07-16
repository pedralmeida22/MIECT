# Mapa de registos
# i: $t0
# lista: $t1
# lista + i: $t2
# ...
# houve_troca: $t4
# i: $t5
# lista: $t6
# lista + i: $t7
 	.data
 	.eqv FALSE,0
 	.eqv TRUE,1
 	.eqv SIZE,3
str1: 	.asciiz "\nIntroduza um numero: "
str2: 	.asciiz "\n Conteudo do array: \n"
str3: 	.asciiz "; "
 	.align 2
lista:	.space 40 		# SIZE * 4
 	.eqv read_int,5
 	.eqv print_string,4
 	.eqv print_int,1
 	.text
 	.globl main
 	
 	
main:				# código para leitura de valores
	li $t0,0 		# i = 0;
while: 	bge $t0,SIZE,endw 	# while(i < SIZE) {
 	
 	la $a0,str1
 	li $v0, print_string
 	syscall			# print_string(...);
 	
 	li $v0,read_int
 	syscall 		# $v0 = read_int();
 	
 	la $t1,lista 		# $t1 = lista (ou &lista[0])
 	sll $t2,$t0,2		#
 	addu $t2,$t2,$t1 	# $t2 = &lista[i]
 	sw $v0,0($t2) 		# lista[i] = read_int();
 	addi $t0,$t0,1 		# i++
 	j while			# }
endw:
 ###########################################

 	la $t6,lista 		#
 	li $t0,SIZE
 	add $t0,$t0,-1
do: 				# do {
 	li $t4,FALSE 		# houve_troca = FALSE;
 	li $t5,0		# i = 0;
while2: bge $t5,$t0,endw2	# while(i < SIZE-1){
if: 	sll $t7,$t5,2 		# $t7 = i * 4
 	addu $t7,$t7,$t6	 # $t7 = &lista[i]
 	lw $t8,0($t7) 		# $t8 = lista[i]
 	lw $t9,4($t7) 		# $t9 = lista[i+1]
 	ble $t8,$t9,endif 	# if(lista[i] > lista[i+1]){
 	sw $t8,4($t7) 		# lista[i+1] = $t8
 	sw $t9,0($t7) 		# lista[i] = $t9
 	li $t4,TRUE 		#
 				# }
endif: 	addi $t5,$t5,1		# i++;
 	j while2 		# }
endw2: 	beq $t4,TRUE,do		# } while(houve_troca == TRUE);

################################################

 				# codigo de impressao do conteudo do array
# Mapa de registos
# p: $t0
# *p: $t1
# lista+Size: $t2
	
	#limpar registos
	li $t0,0
	li $t1,0
	li $t2,0
	
	la $a0,str2
	li $v0,print_string
	syscall			# print_string(...)
	
 	la $t0,lista 		# p = lista
 	li $t2,SIZE 		#
 	sll $t2,$t2,2 		#
 	addu $t2,$t0,$t2 	# $t2 = lista + SIZE;
 	
while3: bgeu $t0,$t2,endw3	# while(p < lista+SIZE) {
 	lw $t1,0($t0)		# $t1 = *p;
 	
 	move $a0,$t1
 	li $v0,print_int	# print_int10( *p );
 	syscall
 	
 	la $a0,str2
 	li $v0,print_string
 	syscall			# print_string(...);
 	
 	addu $t0,$t0,4		# p++;
	j while			# }
endw3:				
 				
 				
 	jr $ra 			# termina o programa 
