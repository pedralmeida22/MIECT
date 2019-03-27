#include <detpic32.h>

void main(void)
{
    // Configure Timer T3 (2 Hz with interrupts disabled)
    while(1)
    {
        // Wait until T3IF = 1
        // Reset T3IF
        putChar('.');
    }
}