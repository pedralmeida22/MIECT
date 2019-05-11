#include <detpic32.h>

volatile unsigned char voltage = 0; // Global variable
int baudrate;
volatile int voltMin = 33;
volatile int voltMax = 0;

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

void configUART(unsigned int baud, char parity, unsigned int stopbits){
    // Configure UART1:
    // 1 - Configure BaudRate Generator
        //BRGH = 0, fator de divisao 16
        U1MODEbits.BRGH = 0;
        if(baud >= 600 || baud <= 115200){
            baudrate = baud;
        }else{
            baudrate = 115200;
        }
        U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1;
    
    // 2 – Configure number of data bits, parity and number of stop bits
        // 11 = 9-bit data, no parity
        // 10 = 8-bit data, odd parity
        // 01 = 8-bit data, even parity
        // 00 = 8-bit data, no parity
        if(parity != 'N' && parity != 'E' && parity != 'O'){
            U1MODEbits.PDSEL = 00;
        }else if(parity == 'N'){
            U1MODEbits.PDSEL = 00;
        }else if(parity == 'E'){
            U1MODEbits.PDSEL = 01;
        }else if(parity == 'O'){
            U1MODEbits.PDSEL = 10;
        }

        // STEL = 0 -> 1 stop bit
        // STEL = 1 -> 2 stop bits
        if(stopbits == 1){
            U1MODEbits.STSEL = 0;
        }
        else if(stopbits == 2){
            U1MODEbits.STSEL = 1;
        }
        else{
            U1MODEbits.STSEL = 0;
        }
        
    // 3 – Enable the trasmitter and receiver modules (see register U1STA)
        U1STAbits.UTXEN = 1;
        U1STAbits.URXEN = 1;
    
    // 4 – Enable UART1 (see register U1MODE)
        U1MODEbits.ON = 1;

    // interrupts
    IPC6bits.U1IP = 2;      // priority of interrupts
    IFS0bits.U1RXIF = 0;    // clear interrupt flag
    IEC0bits.U1RXIE = 1;    // enable UART interrupts
    IEC0bits.U1EIE = 1;     // enable error interrupts
}

void configAD(){
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
}

void configTimer(){
    // Configure Timer T3 (100 Hz with interrupts disabled)
    T3CONbits.TCKPS = 2;    // 1:4 prescaler (fout_presc = 5 MHz)
    PR3 = 49999;            // Fout = 100 Hz
    TMR3 = 0;               // reset timer T3 count register
    T3CONbits.TON = 1;      // Enable timer T3

    // Configure Timer T3 with interrupts enabled
    IPC3bits.T3IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1;  // Enable timer T3 interrupts
    IFS0bits.T3IF = 0;  // Reset timer T3 interrupt flag

    //--------------------------------------------------

    // Configure Timer T1 (4 Hz with interrupts disabled)
    T1CONbits.TCKPS = 7;    // 1:256 prescaler (fout_presc = 78,125KHz)
    PR1 = 19531;            // Fout = 4 Hz
    TMR1 = 0;               // reset timer T3 count register
    T1CONbits.TON = 1;      // Enable timer T3

    // Configure Timer T1 with interrupts enabled
    IPC1bits.T1IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1;  // Enable timer T1 interrupts
    IFS0bits.T1IF = 0;  // Reset timer T1 interrupt flag
}

void configOC(){
    OC1CONbits.OCM = 6;     // PWM mode on OCx; fault pin disabled
    OC1CONbits.OCTSEL = 1;  // Use timer T3 as the time base PWM generation
    OC1RS = 12500;          // Ton constant OCxRS = (PR3+1 * duty_cycle)/100
    OC1CONbits.ON = 1;      // Enable OC1 module
}

void setPWM(unsigned int dutyCycle){
    // duty_cycle must be in the range [0, 100]
    OC1RS = ((49999 + 1) * dutyCycle)/100;       // Ton constant OCxRS = (PR3+1 * duty_cycle)/100
}

void putc(char byte2send){
    while(U1STAbits.UTXBF == 1);
    U1TXREG = byte2send;
}

//*****************************************************

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

    if(voltage < voltMin){
        voltMin = voltage;
    }
    else if(voltage > voltMax){
        voltMax = voltage;
    }

    // Convert voltage amplitude to decimal. Assign it to "voltage"
    printf("%d\r", voltage);

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

void _int_(12) isr_T3(void){
    static int counter = 0;
    // Send "voltage" to displays
    send2displays(voltage);

    if(++counter == 100){
        counter = 0;
        //send voltage to the serial port UART1
        putc(voltage);
        putc('\n');
    }
    
    // Reset T3IF
    IFS0bits.T3IF = 0;
}

void _int_(4) isr_T1(void){
    // start A/D conversion
    AD1CON1bits.ASAM = 1;

    // Reset T3IF
    IFS0bits.T1IF = 0;
}

void _int_(24) isr_uart1(void) {    // getc()

    // If U1EIF set then
    if(IFS0bits.U1EIF){
        // if overrun error then clear OERR flag
        if(U1STAbits.OERR == 1){
            U1STAbits.OERR = 0;
        }else{  // else read U1RXREG to a dummy variable
            char dummy = U1RXREG;
        }

        // clear UART1 error interrupt flag
        IFS0bits.U1EIF = 0;
    }

    putc(U1RXREG);

    if(U1RXREG == 'L'){
        // Send voltMin and voltMax to the serial port UART1
        printf("\n\nVmax: %d\n", voltMax);
        printf("Vmin: %d\n\n", voltMin);
    }

    // Clear UART1 rx interrupt flag
    IFS0bits.U1RXIF = 0;
}

//*********************************************************

int main(void)
{
    // Configure all (digital I/O, analog input, A/D module, interrupts)
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;

    // configure RB8 to RB15 as outputs
    TRISB = TRISB & 0x00FF; // Displays
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    // configure RB1, RB0 as inputs
    TRISBbits.TRISB1 = 1;
    TRISBbits.TRISB0 = 1;

    configAD();
    configTimer();
    configOC();
    configUART(115200, 'N', 1);

    EnableInterrupts(); // Global Interrupt Enable

    while(1){
        // Read RB1, RB0 to the variable "portVal"
        unsigned char portVal = PORTB & 0x0003;

        switch (portVal)
        {
        case 0: // Measure input voltage
            // Enable T1 input voltage
            IEC0bits.T1IE = 1;
            setPWM(0); //LED off
            break;

        case 1: // Freeze
            // Disable T1 interrupts
            IEC0bits.T1IE = 0;
            setPWM(100); //LED on (max bright)
            break;
        
        default: // LED brightness control
            // Enable T1 interrupts
            IEC0bits.T1IE = 1;
            int dutyCycle = voltage * 3;
            setPWM(dutyCycle);
            break;
        }
    }
    
    return 0;
}
