#include <detpic32.h>

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    } 
}

void send2displays(int intei, int deci){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;

    int digit_low = deci;
    int digit_high = intei;

    if(!displayFlag){   // if "displayFlag" is 0 then send digit_low to display_low

        LATB = (LATB & 0x00FF) | ((int) display7Scodes[(digit_low)] << 8);

    }
    else{   // else send digit_high to didplay_high
       
        LATB = (LATB & 0x80FF) | ((int) display7Scodes[digit_high] << 8);
        LATBbits.LATB15 = 1;
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
    LATDbits.LATD5 = !LATDbits.LATD5;
    LATDbits.LATD6 = !LATDbits.LATD6;
}

int main (void){
    // configure all (digital I/O, analog input, A/D module)
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;
    //LATBbits.LATB15 = 1;
    
    // configure RB8 to RB15 as outputs
    TRISB = TRISB & 0x00FF; // displays
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
   
   
    //configure o porto RB4 como entrada analógica e o módulo A/D
    TRISBbits.TRISB4 = 1;       // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;      // RBx configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;       // Conversion trigger selection bits: in this
                                // mode an internal counter ends sampling and
                                // starts conversion
    AD1CON1bits.CLRASAM = 1;    // Stop conversions when the 1st A/D converter
                                // interrupt is generated. At the same time,
                                // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 4-1;     // Interrupt is generated after XX samples
                                // (replace XX by the desired number of
                                // consecutive samples)
    AD1CHSbits.CH0SA = 4;       // replace x by the desired input
                                // analog channel (0 to 15)
    AD1CON1bits.ON = 1;         // This must the last command of the A/D
                                // configuration sequence
    
    int i = 0;
    int intei = 0;
    int deci = 0;
    while(1){
        if(i++ % 25 == 0){ // 0, 250ms, 500ms, ...
            // Convert analog input (4 samples)
            AD1CON1bits.ASAM = 1;

            // Wait while conversion not done (AD1IF == 0)
            while(IFS1bits.AD1IF == 0);

            // Read conversion result (ADC1BUF0 value)
            int *p = (int *) (&ADC1BUF0);
            int i;
            int sum = 0;
            for(i = 0; i < 16; i++){
                sum += p[i*4];
            } 

            // Calculate buffer average
            int average = sum / 4;

            // Calculate voltage amplitude
            int v = (average*33+511)/1023;
            //printf("%d\n", v);

            // Convert voltage amplitude to decimal
            intei = v / 10;
            deci = v % 10;
            printf("%d.%d\r", intei, deci);
        }
        // Send voltage value to displays
        send2displays(intei, deci);

        // Wait 10 ms (using the core timer)
        delay(10);
    }
    return 0;
}
