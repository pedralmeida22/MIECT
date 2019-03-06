# void main(void) {
#     int counter = 0;
#     while(1) {
#         while(readCoreTimer() < 200000);
#         resetCoreTimer();
#         printInt(++counter, 10);
#         putChar(' '); // space
#     }
# }

    .equ READ_CORE_TIMER,11
    .equ RESET_CORE_TIMER,12
    .equ PUT_CHAR,3
    .equ PRINT_INT,6

    .data
    .text
    .globl main
main:
    li $t0,0
while:
    li $v0, READ_CORE_TIMER
    syscall

    blt $v0,200000,while

    li $v0,RESET_CORE_TIMER
    syscall

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