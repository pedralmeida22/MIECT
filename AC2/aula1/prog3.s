#// Programa 3 – teste dos system calls "getChar()" e "putChar()"
#//
#int main(void)
#{
#char c;
#while (1)
#{
#c = getChar();
#if (c == '\n')
#break;
#putChar(c);
#}
#return 1;
#}

    .equ getChar, 2
    .equ putChar, 3
    .data
    .text
    .globl main
main:
while:
    li $t0,getChar
    syscall
    move $t0,$v0

if: bne $t0,'\n', endw
    move $a0, $t0
    li $v0, putChar
    syscall

    j while
endw:
    li $v0,1
    jr $ra