#include <detpic32.h>

volatile unsigned char voltage = 0;

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x80};

    static char displayFlag = 0;

    unsigned char digit_low = value % 10;
    unsigned char digit_high = value / 10;

    LATDbits.LATD5 = !displayFlag;
    LATDbits.LATD6 = displayFlag;

    if(displayFlag == 0){
        LATB = (LATB & 0x00FF) | (display7Scodes[digit_low] << 8);
    }else{
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_high] << 8);
        LATBbits.LATB15 = 1;
    }
    displayFlag = !displayFlag;
}

void _int_(27) isr_adc(void){
    int sum;
    int i;
    int *p = (int *) (&ADC1BUF0);
    for(i = 0; i < 16; i++){
        sum += p[i*4];
    }
    int average = sum / 8;
    voltage = (average * 33 + 511) / 1023;

    printf("%d\r", voltage);

    IFS1bits.AD1IF = 0;
}

int main(void){
    unsigned int cnt = 0;

    LATB = LATB & 0x00FF;
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    TRISB = TRISB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    TRISBbits.TRISB4 = 1;   // RBx digital output disconnected
    AD1PCFGbits.PCFG4= 0;   // RBx configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;   // Conversion trigger selection bits: in this
                            // mode an internal counter ends sampling and
                            // starts conversion
    AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
                            // interrupt is generated. At the same time,
                            // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16; // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 8-1; // Interrupt is generated after XX samples
                            // (replace XX by the desired number of
                            // consecutive samples)
    AD1CHSbits.CH0SA = 4;   // replace x by the desired input
                            // analog channel (0 to 15)
    AD1CON1bits.ON = 1;     // Enable A/D converter
                            // This must the last command of the A/D
                            // configuration sequence

    // configure interrupt system
    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;

    EnableInterrupts();
    
    while(1){
        if(cnt % 25 == 0){
            AD1CON1bits.ASAM = 1;
        }
        send2displays(voltage);
        cnt++;
        delay(10);
    }

    return 0;
}
