    .equ SFR_BASE_HI, 0xBF88    # 16 MSbits of SFR area
    .equ TRISE, 0X6100          # TRISE address is 0xBF886100
    .equ TRISB, 0x6040          # TRISB address is 0xBF886040
    .equ PORTB, 0x6050          # PORTB address is 0xBF886040
    .equ LATE, 0x6120           # LATE address is 0xBF886120
    .data
    .text
    .globl main

main:
    lui $t1, SFR_BASE_HI        # Fase Input/Output
    lw $t2, TRISB($t1)          # read
    ori $t2,$t2,0xF             # modify
    sw $t2, TRISB($t1)          # write

    lw $t2, TRISE($t1)          # read
    andi $t2,$t2,0xFFF0         # modify
    sw $t2,TRISE($t1)           # write

    #-----------------
while:
    lw $t2,PORTB($t1)          # Ler entrada
    andi $t2,$t2,0xF
    xor $t2,$t2,1001

    lw $t3,LATE($t1)           # "Limpar" os bits da saida 
    andi $t3,$t3,0xFFF0

    #------------------

    or $t2,$t2,$t3             # calcular palavra final
    sw $t2,LATE($t1)           # escrever o Output

    j while

    jr $ra