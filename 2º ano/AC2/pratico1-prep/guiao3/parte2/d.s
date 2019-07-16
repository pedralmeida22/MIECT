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
    andi $t3,$t2,0x0008
    sll $t2,$t2,1

if: beq $t3,$0,else
    andi $t2,$t2,0xFFFE
    j endif
else:
    ori $t2,$t2,0x0001
endif:

    sw $t2,LATE($t1)

    li $a0,375
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