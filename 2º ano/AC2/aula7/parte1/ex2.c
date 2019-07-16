#include <detpic32.h>

void configTimer(){
    // Configure Timer T3 (2 Hz with interrupts disabled)
    T3CONbits.TCKPS = 7;    // 1:256 prescaler (fout_presc = 78,125KHz)
    PR3 = 39062;            // Fout = 2 Hz
    TMR3 = 0;               // reset timer T3 count register
    T3CONbits.TON = 1;      // Enable timer T3

    // Configure Timer T3 with interrupts enabled
    IPC3bits.T3IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1;  // Enable timer T3 interrupts
    IFS0bits.T3IF = 0;  // Reset timer T2 interrupt flag
}

void _int_(12) isr_T3(void){
    putChar('.');
    // Reset T3IF
    IFS0bits.T3IF = 0;
}

int main(void)
{
    configTimer();
    EnableInterrupts();
    while(1);
    
    return 0;
}
