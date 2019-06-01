#include <detpic32.h>

void _int_(12) isr_T3(void){
     static int printFlag = 0;
    if(printFlag) putChar('.');
    printFlag = !printFlag;
    IFS0bits.T3IF = 0;
}

int main(void){
    // Configure Timer T3 (2 Hz)
    T3CONbits.TCKPS = 7;    // 20 MHz / 256 = 78125
    PR3 = 39062;           // 78125 / 2 = 39063
    TMR3 = 0;
    T3CONbits.TON = 1;

    //Interrupts
    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;

    EnableInterrupts();

    while(1);

    return 0;
}
