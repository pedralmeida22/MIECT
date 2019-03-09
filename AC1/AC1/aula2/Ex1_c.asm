 	.data
 	.text
 	.globl main
main:   ori $t0,$0,0xE543  # valores de entrada desejados
 	nor $t1,$t0, $0    # "negacao"
 	jr $ra             # fIm do programa