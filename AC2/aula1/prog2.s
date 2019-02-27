# Programa 2 – teste do system call "inkey()"
#
# int main(void)
# {
#  char c;
#  while (1)
#  {
#  while ((c = inkey()) == 0);
#  if (c == '\n')
#  break;
#  printStr("Key pressed\n");
#  }
#  return 0;
# }

    .equ inkey, 1
    .equ printStr, 8
    .data
msg:.asciiz "Key pressed\n"
    .text
    .globl main
main:
while:  li $v0, inkey
        syscall
        move $t0, $v0

while2: beq $t0,0,while

if:     beq $t0,'\n', endw


        li $v0, printStr
        la $a0, msg
        syscall     #  printStr("Key pressed\n");

        j while

endw:   li $v0, 0   #  return 0;
        jr $ra