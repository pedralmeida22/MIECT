    .equ SFR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ LATE, 0x6120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .data
    .text
    .globl main
main:
    lui $t1, SFR_BASE_HI
    lw $t2, TRISE($t1)  # RE0,1,2,3 saida
    andi $t2,$t2,0xFFF0
    sw $t2,TRISE($t1)

    lw $t2,TRISB($t1)   # RB0,1,2,3 entrada
    ori $t2,$t2,0x000F
    sw $t2,TRISB($t1)

while:
    lw $t3,PORTB($t1)
    andi $t3,$t3,0x000F
    xor $t3,$t3,0x0009

    lw $t4,LATE($t1)
    andi $t4,$t4,0xFFF0

    or $t3,$t3,$t4
    sw $t3,LATE($t1)

    j while

    jr $ra