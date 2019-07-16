#include <detpic32.h>

int main(void){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x80};

    LATB = LATB & 0x80F0;
    LATD = LATD & 0xFF9F;

    TRISB = (TRISB & 0x80FF) | 0x000F;
    TRISD = TRISD & 0xFF9F;

    LATDbits.LATD5 = 1;

    while(1){
        int dip = PORTB & 0x000F;
        int temp = display7Scodes[dip] << 8;

        LATB = (LATB & 0x80FF) | temp;
    }

    return 0;
}
