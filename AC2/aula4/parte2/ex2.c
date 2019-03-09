#include <detpic32.h>

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    } 
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x5E, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    // send digit_high (dh) to display_high: dh = value >> 4
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;
    LATB = (LATB & 0x80FF) | ((int) display7Scodes[(value >> 4)] << 8);

    // send digit_low (dl) to display_low: dl = value & 0x0F
    LATD = LATD ^ 0x0060;
    LATB = (LATB & 0x80FF) | ((int) display7Scodes[(value & 0x0F)] << 8);
}

int main(void){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x5E, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    // displays
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;

    // configure RB8 to RB14 as outputs
    TRISB = TRISB & 0x80FF;

    // configure RD5-RD6 as outputs
    TRISD = TRISD & 0xFF9F;

    unsigned char count = 0;
    while(1){
        delay(200);
        send2displays(count);
        count++;
        count &= 0x00FF;
    }

    return 0;
}