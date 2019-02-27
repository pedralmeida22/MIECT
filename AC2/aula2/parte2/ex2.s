    .equ READ_CORE_TIMER,11
    .equ RESET_CORE_TIMER,12
    .equ PUT_CHAR,3
    .equ PRINT_INT,6
    .equ WAIT, 20000

    .data
    .text
    .globl main
main:
    li $t0,0
while:
    li $a0, 1000
    jal delay

    addi $t0,$t0,1
    move $a0,$t0
    li $a1,10
    li $v0,PRINT_INT
    syscall

    li $a0,' '
    li $v0, PUT_CHAR
    syscall

    j while
    jr $ra


delay:
loop: 
    beq $a0, $0, endw
    li $v0, RESET_CORE_TIMER
    syscall

while2:
    li $v0,READ_CORE_TIMER
    syscall
    blt $v0, WAIT,while2

    addi $a0,$a0,-1
    j loop
endw:
    jr $ra