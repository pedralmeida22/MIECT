#include <detpic32.h>

int main(void){
    // Configure Timer T3 (2 Hz with interrupts disabled)
    T3CONbits.TCKPS = 7;    // 20 MHz / 256 = 78125
    PR3 = 39062;           // 78125 / 2 = 39063
    TMR3 = 0;
    T3CONbits.TON = 1;

    while(1){
        // wait until T3IF = 1
        while(IFS0bits.T3IF == 0);
        // Reset T3IF
        IFS0bits.T3IF = 0;
        putChar('.');
    }
    return 0;
}
