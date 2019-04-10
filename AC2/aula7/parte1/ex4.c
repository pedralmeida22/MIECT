#include <detpic32.h>

void configTimer(){
    // Configure Timer T3 (10 Hz with interrupts disabled)
    T3CONbits.TCKPS = 5;    // 1:32 prescaler (fout_presc = 625 KHz)
    //PR3 = 62499;            // Fout = 10 Hz
    PR3 = 31250;            // Fout = 20 Hz
    TMR3 = 0;               // reset timer T3 count register
    T3CONbits.TON = 1;      // Enable timer T3

    // Configure Timer T3 with interrupts enabled
    IPC3bits.T3IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1;  // Enable timer T3 interrupts
    IFS0bits.T3IF = 0;  // Reset timer T3 interrupt flag

    //--------------------------------------------------

    // Configure Timer T1 (2 Hz with interrupts disabled)
    T1CONbits.TCKPS = 7;    // 1:256 prescaler (fout_presc = 78,125KHz)
    PR1 = 39062;            // Fout = 2 Hz
    TMR1 = 0;               // reset timer T3 count register
    T1CONbits.TON = 1;      // Enable timer T3

    // Configure Timer T1 with interrupts enabled
    IPC1bits.T1IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1;  // Enable timer T1 interrupts
    IFS0bits.T1IF = 0;  // Reset timer T1 interrupt flag
}

void _int_(12) isr_T3(void){
    printf("3\n");
    
    // Reset T3IF
    IFS0bits.T3IF = 0;
}

void _int_(4) isr_T1(void){
    printf("1\n");

    // Reset T3IF
    IFS0bits.T1IF = 0;
}

int main(void)
{
    configTimer();
    EnableInterrupts();
    while(1);
    
    return 0;
}