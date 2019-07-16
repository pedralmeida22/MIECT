#include <detpic32.h>

void configTimers(){
    // config T1 -> 2Hz
    T1CONbits.TCKPS = 7;  // 20 MHz / 256 = 78125
    PR1 = 39062;            // 78125 / 2 = 39062;
    TMR1 = 0;
    T1CONbits.TON = 1;

    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;

    // config T3 -> 10 Hz
    T3CONbits.TCKPS = 5;    // 20 MHz / 32 = 625000
    PR3 = 62499;            // 625000 / 10 = 62500
    TMR3 = 0;
    T3CONbits.TON = 1;

    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;
}

void _int_(4) isr_T1(void){
    printf("1\n");
    IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void){
    printf("3\n");
    IFS0bits.T3IF = 0;
}

int main(void){
    configTimers();
    EnableInterrupts();

    while(1);

    return 0;
}
