#include <detpic32.h>

// 1 version
void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x5E, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    // send digit_high (dh) to display_high: dh = value >> 4
    LATD = LATD ^ 0x0060;
    LATB = (LATB & 0x80FF) | ((int) display7Scodes[(value >> 4)] << 8);

    // send digit_low (dl) to display_low: dl = value & 0x0F
    LATD = LATD ^ 0x0060;
    LATB = (LATB & 0x80FF) | ((int) display7Scodes[(value & 0x0F)] << 8);
}

// 2 version
void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x5E, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;

    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;

    if(!displayFlag){   // if "displayFlag" is 0 then send digit_low to display_low
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;

        LATB = (LATB & 0x80FF) | ((int) display7Scodes[(digit_low)] << 8);

    }
    else{   // else send digit_high to didplay_high
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;

        LATB = (LATB & 0x80FF) | ((int) display7Scodes[digit_high] << 8);
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
}