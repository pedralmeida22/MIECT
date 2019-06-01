#include <detpic32.h>

int main(void)
{
    // Configure Timer T3 (2 Hz with interrupts disabled)
    T3CONbits.TCKPS = 7; // 1:256 prescaler (fout_presc = 78,125KHz)
    PR3 = 39062; // Fout = 2 Hz
    TMR3 = 0;   // reset timer T3 count register
    T3CONbits.TON = 1;  // Enable timer T3

    while(1)
    {
        // Wait until T3IF = 1
        while(IFS0bits.T3IF == 0);
        // Reset T3IF
        IFS0bits.T3IF = 0;
        putChar('.');
    }
    return 0;
}
