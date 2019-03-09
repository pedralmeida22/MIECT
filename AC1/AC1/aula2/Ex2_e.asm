 	.data
 	.text
 	.globl main
main: 	ori $t0,$0, 7
	or $t1, $t0, $0
	srl $t3, $t1, 4 # aux = num >> 4
	xor $t1, $t0, $t2  # num = num ^ (num >> 1)
	srl $t3, $t1, 2 # aux = num >> 2
	xor $t1, $t1, $t3
	srl $t3, $t1, 1
	xor $t2, $t1, $t3	 
	jr $ra      # fim do programa