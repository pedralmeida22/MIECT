# Mapa de registos:
# $t0 – mdor
# $t1 – mdo
# $t2 - i
# $t3 - res

	.data
str1: 	.asciiz "Introduza dois numeros: \n"
str2: 	.asciiz "Resultado: "
	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_int10, 1
 	.text
 	.globl main

main:	la $a0,str1
	li $v0,print_string      # "Introduza dois numeros: \n"
 	syscall
 	
 	ori $v0,$0,read_int
 	syscall
 	move $t0,$v0            # mdor = read_int()
 	
 	ori $v0,$0, read_int
 	syscall
 	move $t1,$v0            # mdo = read_int()
 	
 	and $t0,$t0,0x0F        # mdor & 0x0F
 	and $t1,$t1, 0x0F       # mdo & ox0F
 	
while:	