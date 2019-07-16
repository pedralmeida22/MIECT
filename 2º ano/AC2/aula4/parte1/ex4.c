#include <detpic32.h>

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    } 
}

void to7seg(char c){
    switch (c)
    {
        case 'a' | 'A':
            LATB = (LATB & 0x00FF) | 0x7700;
            break;
        case 'b' | 'B':
            LATB = (LATB & 0x00FF) | 0x7C00;
            break;
        case 'c' | 'C':
            LATB = (LATB & 0x00FF) | 0x3900;
            break;
        case 'd' | 'D':
            LATB = (LATB & 0x00FF) | 0x5E00;
            break;
        case 'e' | 'E':
            LATB = (LATB & 0x00FF) | 0x7900;
            break;
        case 'f' | 'F':
            LATB = (LATB & 0x00FF) | 0x7100;
            break;
        case 'g' | 'G':
            LATB = (LATB & 0x00FF) | 0x7D00;
            break;
        case '.':
            LATB = (LATB & 0x00FF) | 0x8000;
            break;
    
        default:
            break;
    }
}

int main(void){
    unsigned char segment;

    LATDbits.LATD6 = 1;         // display high active
    LATDbits.LATD5 = 0;         // display low inactive
    
    TRISB = TRISB & 0x80FF;         // configure RB8-RB14 as outputs
    TRISD = TRISD & 0xFF9F;         // configure RD5-RD6 as outputs

    while(1){
        LATDbits.LATD6 = !LATDbits.LATD6;
        LATDbits.LATD5 = !LATDbits.LATD5;       // toggle display selection
        //segment = 1;
        segment = 'a';

        int i = 0;
        while(i < 7)
        {
            to7seg(segment++);                  // send "segment" value to display
            delay(500);                         // wait 0.5 second
            //segment = segment << 1;
            i++;
        }
    }
    return 0;
}