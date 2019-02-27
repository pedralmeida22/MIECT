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
    .equ RESET_CORE_TIMER,?
    .equ PUT_CHAR,?
    .equ PRINT_INT,?

    .data
    .text
    .globl main
main:
    li $t0,0
while:
    li $v0, READ_CORE_TIMER
    syscall
    bge $v0,200000,???
    li $v0,???
    syscall
    li $a0,' '
    li $v0, PUT_CHAR
    syscall
    addi $t0,$t0,???
    move $a0,$t0
    li $v0,???
    syscall
    j while
    jr $ra