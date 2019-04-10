#include <detpic32.h>

volatile unsigned char voltage = 0; // Global variable

void delay(int ms){
   for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    } 
}

void send2displays(unsigned char v){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
             0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;

    int digit_low = v % 10;
    int digit_high = v / 10;

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

void _int_(27) isr_adc(void)
{
    // Read conversion result (ADC1BUF0 value)
    int *p = (int *) (&ADC1BUF0);

    // Calculate buffer average (8 samples)
    int sum = 0;
    int i;
    for(i = 0; i < 8; i++){
        sum += p[i*4];
    }

    int average = sum / 4; 
    
    // Calculate voltage amplitude
    voltage = (average*33+511)/1023;

    // Convert voltage amplitude to decimal. Assign it to "voltage"
    printf("%d\r", voltage);

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
} 

int main(void)
{
    unsigned int cnt = 0;
    // Configure all (digital I/O, analog input, A/D module, interrupts)
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    // configure RB8 to RB15 as outputs
    TRISB = TRISB & 0x00FF; // Displays
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

    // Configure interrupt system
    IPC6bits.AD1IP = 2; // configure priority of A/D interrupts 

    IFS1bits.AD1IF = 0; // clear A/D interrupt flag

    IEC1bits.AD1IE = 1; // enable A/D interrupts

    EnableInterrupts(); // Global Interrupt Enable
    while(1)
    {
        if(cnt % 25 == 0) // 250 ms (4 samples/second)
        {
            // Start A/D conversion
            AD1CON1bits.ASAM = 1;
        }
    // Send "voltage" variable to displays
    send2displays(voltage);
    cnt++;
    // Wait 10 ms
    delay(10);
    }
    return 0;
}