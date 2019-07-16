#include <detpic32.h>

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    } 
}

void send2displays(unsigned char value){       // 0,1,...,F,.
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x80};

    static char displayFlag = 0;

    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;

    if(!displayFlag){   // if "displayFlag" is 0 then send digit_low to display_low
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;

        LATB = (LATB & 0x00FF) | ((int) display7Scodes[(digit_low)] << 8);

        if(value % 2 == 0){
            LATBbits.LATB15 = 1;
        }
    }
    else{   // else send digit_high to didplay_high
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;

        LATB = (LATB & 0x00FF) | ((int) display7Scodes[digit_high] << 8);

        if(value % 2 != 0){
            LATBbits.LATB15 = 1;
        }
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
    LATBbits.LATB15 = 0;
}

unsigned char toBCD(unsigned char value){
    return ((value / 10) << 4) + (value % 10);
}

void shine(void){
    int i = 0;
    do{
        //on
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0x00FF) | 0x3F00;
        delay(500);

        //off
        LATB = LATB & 0x00FF;
        delay(500);

        i++;
    }while(i < 5);
}

int main(void){
    // displays
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;

    // configure RB8 to RB15 as outputs
    TRISB = TRISB & 0x00FF;

    // configure RD5-RD6 as outputs
    TRISD = TRISD & 0xFF9F;

    unsigned char count = 0;
    while(1){
        int i = 0;
        do{
            // delay(50);
            // delay(20);
            delay(10);  // refrescamento em 100 Hz
            send2displays(toBCD(count));
        }while(++i < 20);        
        count++;
        count &= 0x00FF;
        if(count == 60){
            count = 0;
            shine();
        }
    }

    return 0;
}
