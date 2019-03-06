# void main(void) {
#     int v = 0;
#     TRISE0 = 0;	// Configura o porto RE0 como saída
#     while(1) {
#     	  LATE0=v; // Escreve v no bit 0 do porto E 
#	  	  delay(500); // Atraso de 500ms
#		  v ^= 1;  // complementa o bit 0 de v (v = v xor 1)
# 	  } 
# }    
    
    .equ SFR_BASE_HI, 0xBF88    # 16 MSbits of SFR area
    .equ TRISE, 0X6100          # TRISE address is 0xBF886100
    .equ LATE, 0x6120           # LATE address is 0xBF886120
    .equ READ_CORE_TIMER,11
    .equ RESET_CORE_TIMER,12
    .equ WAIT,20000

    .data
    .globl main
main:
    li $s0,0                # int v = 0

    lui $s1,SFR_BASE_HI
    lw $s2, TRISE($s1)      # read
    andi $s2,$s2,0xFFFE     # modify
    sw $s2,TRISE($s1)       # write

while:
    lw $s2,LATE($s1)        # read
    andi $s2,$s2,0xFFFE     # modify
    move $s2,$s0            # write
    sw $s2,LATE($s1)        # LATE0 = v;

    li $a0,500
    jal delay               # delay 500ms

    xor $s0,$s0,1           # v ^= 1;

    j while
    jr $ra


###################################
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