# Mapa de registos:
# $t0 – gray
# $t1 – bin
# $t2 - mask

	.data
str1: 	.asciiz "Introduza um numero: \n"
str2: 	.asciiz "\n O valor em codigo Gray: \n"
str3: 	.asciiz "\n O valor em codigo Binario: \n"
	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_int16, 34
 	.text
 	.globl main

main:	la $a0,str1
 	li $v0,print_string      # "Introduza um numero: \n"
 	syscall
 	
 	ori $v0,$0, read_int
 	syscall
 	move $t0,$v0 	       # gray = read_int()
 	
 	srl $t2,$t0,1          # mask = gray >> 1
 	
 	move $t1,$t0           # bin = gray
 	
while: 	beq $t2,0, endw        # while(mask != 0)
	xor $t1,$t1,$t2        # bin = bin ^ mask
	srl $t2,$t2,1          # mask = mask >> 1
	j while
endw:	
	la $a0, str2
	li $v0, print_string   # "O valor em codigo Gray: \n"
	syscall
	
	move $a0, $t0
	ori $v0,$0, print_int16  # print_int16(gray)
	syscall
	
	la $a0, str3
	li $v0, print_string  # "O valor em codigo Binario: \n"
	syscall
	
	move $a0, $t1
	ori $v0,$0, print_int16  # print_int16(bin)
	syscall
	
	jr $ra 
	
