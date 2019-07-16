    .equ SFR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ LATE, 0x6120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050

    .equ READ_CORE_TIMER, 11
    .equ RESET_CORE_TIMER, 12
    .equ K,20000

    .data
    .text
    .globl main
main:
    subu $sp,$sp,4
    sw $ra,0($sp)

    lui $t1, SFR_BASE_HI
    lw $t2,TRISE($t1)
    andi $t2,$t2,0xFFF0
    sw $t2,TRISE($t1)

    li $t0,0
while:
    lw $t2,LATE($t1)
    andi $t2,$t2,0xFFF0

    or $t2,$t2,$t0
    sw $t2,LATE($t1)

    addi $t0,$t0,1

    li $a0,125
    jal delay

    j while

    lw $ra,0($sp)
    addu $sp,$sp,4

    jr $ra



delay:
for:
    ble $a0,$0,endfor
    li $v0,RESET_CORE_TIMER
    syscall

whil:
    li $v0,READ_CORE_TIMER
    syscall
    blt $v0,K,whil

    sub $a0,$a0,1
    j for

endfor:
    jr $ra