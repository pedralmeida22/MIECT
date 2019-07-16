	.data
	.eqv SIZE,50
str1:	.asciiz "Arquitetura de "
str2:	.space SIZE
str3: 	.asciiz "Computadoes I"
str4:	.asciiz "\n"
	.eqv print_str,4
	.text 
	.globl main
main:	
	subu $sp,$sp,4
	sw $ra,0($sp)
	la $a0,str2
	la $a1,str1
	jal strcpy
	la $a0,str2
	li $v0,print_str
	syscall
	
	la $a0,str4
	li $v0,print_str
	syscall
	
	la $a0,str2
	la $a1,str3
	jal strcat
	
	la $a0,str2
	li $v0,print_str
	syscall
	
	li $v0,0
	
	lw $ra,0($sp)
	addu $sp,$sp,4
	
	jr $ra
	
	
#############################################

# mapa de registos
# $t0 : p
# $t1 : *p

strcat:
	move $t0,$a0
while:	lb $t1,0($t0)
	beq $t1,'\n',endw
	addi $t0,$t0,1
	j while
endw:
	subu $sp,$sp,8
	sw $ra,0($sp)
	sw $a0,4($sp) 
	move $a0,$t0
	jal strcpy2
	lw $ra,0($sp)
	lw $a0,4($sp)
	addu $sp,$sp,8
	move $v0,$a0
	jr $ra
	
	
######################################################	


strcpy2:li $t0,0		#int i=0;
doStrcpy:			#do
	add $t1,$t0,$a0 
	add $t2,$t0,$a1
 	lb $t3,0($t2)		#dst[i] = src[i];
 	sb $t3,0($t1)
 	addi $t0,$t0,1
whileStrcpy: 
	bne $t3,'\0',doStrcpy#} while(src[i++] != '\0');
 	move $a0,$v0		#return dst;
	jr $ra	
	
strcpy:	li $t0,0 		# i = 0;

do:	addu $t1,$a0,$t0 	# t1 = &src[i]
	addu $t2,$a1,$t0 	# t2 = &dst[i]
	lb $t3,0($t2)    	# t3 = src[i];
	sb $t3,0($t1)    	# dst[i] = t3
	addi $t0,$t0,1		# i++
while_do:
	bne $t3,'\n',do
	move $v0,$a0  		# return dst
	jr $ra
