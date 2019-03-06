#include <detpic32.h>

int main(void){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x5E, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    // configure RB0 to RB3 as inputs
    TRISB = TRISB | 0xF;

    // configure RB8 to RB14 and RD5 to RD6 as outputs
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    TRISB = TRISB & 0x80FF;

    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    // Select display low

    while(1){
        // read dip-switch
        int dip = PORTB & 0xF;
        printf("%d\n", dip);

        // convert to 7 segments code
        int temp = (int) display7Scodes[dip] << 8;

        // send to display
        LATB = (LATB & 0x80FF) | temp;
    }
    return 0;
}