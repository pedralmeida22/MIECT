#include <detpic32.h>

int main(void){
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

    while(1){
        //start conversion
        AD1CON1bits.ASAM = 1;

        // Wait while conversion not done (AD1IF == 0)
        while(IFS1bits.AD1IF == 0);

        // Read conversion result (ADC1BUF0 value) and print it
        int *p = (int *) (&ADC1BUF0);
        int i;
        for(i = 0; i < 16; i++){
            printInt(p[i*4], 16 | 4 << 16);
            printf("\n");
        }
        /*int *p = (int *)(&ADC1BUF0);
        for(; p <= (int *)(&ADC1BUFF); p+=4 )
        {
            printInt( *p, ... );
        }*/

        // Reset AD1IF
        IFS1bits.AD1IF = 0;
    }
    return 0;
}
