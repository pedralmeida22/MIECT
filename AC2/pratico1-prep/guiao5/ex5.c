#include <detpic32.h>

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

void send2displays(unsigned char intei, unsigned char deci){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x80};

    static char displayFlag = 0;

    unsigned char digit_low = deci;
    unsigned char digit_high = intei;

    LATDbits.LATD5 = !displayFlag;
    LATDbits.LATD6 = displayFlag;

    if(displayFlag == 0){
        LATB = (LATB &  0x00FF) | (display7Scodes[digit_low] << 8);
    }else{
        LATB = (LATB &  0x00FF) | (display7Scodes[digit_high] << 8);
        LATBbits.LATB15 = 1;
    }
    displayFlag = !displayFlag;
}

int main(void){
    TRISBbits.TRISB4 = 1;   // RBx digital output disconnected
    AD1PCFGbits.PCFG4= 0;   // RBx configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;   // Conversion trigger selection bits: in this
                            // mode an internal counter ends sampling and
                            // starts conversion
    AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
                            // interrupt is generated. At the same time,
                            // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16; // Sample time is 16 TAD (TAD = 100 ns)
    //AD1CON2bits.SMPI = 1-1; // Interrupt is generated after XX samples
    // ex3
    AD1CON2bits.SMPI = 4-1; // (replace XX by the desired number of
                            // consecutive samples)
    AD1CHSbits.CH0SA = 4;   // replace x by the desired input
                            // analog channel (0 to 15)
    AD1CON1bits.ON = 1;     // Enable A/D converter
                            // This must the last command of the A/D
                            // configuration sequence

    LATB = LATB & 0x80FF;

    TRISB = TRISB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    TRISEbits.TRISE0 = 0;

    int i = 0;
    while(1){
        if(i++ % 25 == 0){
            LATEbits.LATE0 = 1;
            AD1CON1bits.ASAM = 1;

            while(IFS1bits.AD1IF == 0); // polling
            LATEbits.LATE0 = 0;
            
            int sum = 0;
            int i;
            int *p = (int *) (&ADC1BUF0);
            for(i = 0; i < 16; i++){
                //printInt(p[i*4], 16 | 3 << 16);
                //printf("\n");
                sum += p[i*4];
            }
            int average = sum/4;
            int v = (average*33 + 511) / 1023;

            int intei = v / 10;
            int deci = v % 10;

            printf("%d.%d\r", intei, deci);
            send2displays(intei, deci);
            delay(10);

            IFS1bits.AD1IF = 0;
        }
    }

    return 0;
}
