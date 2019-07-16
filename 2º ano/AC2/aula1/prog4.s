#// Programa 4 – teste dos system calls de leitura e impressão de inteiros
#//
#void main(void)
#{
#    int value;
#    while (1)
#    {
#        printStr("\nIntroduza um numero (sinal e módulo): ");
#        value = readInt10();
#        printStr("\nValor lido em base 2: ");
#        printInt(value, 2);
#        printStr("\nValor lido em base 16: ");
#        printInt(value, 16);
#        printStr("\nValor lido em base 10 (unsigned): ");
#        printInt(value, 10);
#        printStr("\nValor lido em base 10 (signed): ");
#        printInt10(value);
#    }
#}

    .equ printStr, 8
    .equ printInt, 6
    .equ printInt10, 7
    .equ readInt10, 5
    .data
str1:   .asciiz "\nIntroduza um numero (sinal e modulo): "
base2:  .asciiz "\nValor lido em base 2: "
base16: .asciiz "\nValor lido em base 16: "
base10s:    .asciiz "\nValor lido em base 10 (signed): "
base10u:    .asciiz "\nValor lido em base 10 (unsigned): "

    .text
    .globl main
main:
    la $a0, str1
    li $v0, printStr
    syscall

    la $a0, readInt10
    syscall
    move $t0,$v0

    la $a0, base2
    li $v0, printStr
    syscall

    move $a0,$t0
    li $a1,2
    li $v0, printInt
    syscall

    la $a0, base16
    li $v0, printStr
    syscall 

    move $a0,$t0
    li $a1,16
    li $v0, printInt
    syscall 

    la $a0, base10u
    li $v0, printStr
    syscall

    move $a0,$t0
    li $v0, printInt
    syscall

    la $a0, base10s
    li $v0, printStr
    syscall

    move $a0,$t0
    li $v0, printInt10
    syscall

    jr $ra