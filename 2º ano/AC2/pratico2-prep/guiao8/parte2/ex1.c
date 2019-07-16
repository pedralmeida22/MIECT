#include <detpic32.h>

void configUart(unsigned int baud, char parity, unsigned int stopbits){
    // Configure BaudRate Generator
    if(baud >= 600 && baud <= 115200) U1MODEbits.BRGH = baud;
    else U1MODEbits.BRGH = 115200;

    // Configure number of data bits (8), parity and number of stop bits
    if(parity == 'N') U1MODEbits.PDSEL = 00;
    else if(parity == 'E') U1MODEbits.PDSEL = 01;
    else if(parity == 'O') U1MODEbits.PDSEL = 10;
    else U1MODEbits.PDSEL = 00;

    if(stopbits == 1) U1MODEbits.STSEL = 0;
    else if(stopbits == 2) U1MODEbits.STSEL = 1;
    else U1MODEbits.STSEL = 0;

    // Enable the transmitter and receiver modules
    U1STAbits.UTXEN = 1;
    U1STAbits.URXEN = 1;

    // Enable UART1
    U1MODEbits.ON = 1;
}

void putc(char byte2send){
    // Wait while UTXBF == 1
    while(U1STAbits.UTXBF == 1);
    // Copy byte2send to the UxTXREG register
    U1TXREG = byte2send;
}

void puts(char *str){
    // use putc() function to send each charater
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}

char getc(void){
    // if OERR == 1 then reset OERR
    if(U1STAbits.OERR) U1STAbits.OERR = 0;
    
    // Wait while URXDA == 0
    while(U1STAbits.URXDA == 0);

    // if FERR or PERR then
    if(U1STAbits.FERR || U1STAbits.PERR){
        // read UxRXREG and return 0 (discard character)
        char dummy = U1RXREG;
        return 0; 
    }
    // else return U1RXREG
    return U1RXREG;
}

void configInterrupts(){
    IPC6bits.U1IP = 2;
    IFS0bits.U1RXIF = 0;
    IEC0bits.U1RXIE = 1;
}

void _int_(24) isr_uart1(void) {
    putc(U1RXREG);

    // Clear UART1 rx interrupt flag
    IFS0bits.U1RXIF = 0;
}

int main(void){
    configUart(115200, 'N', 1);
    configInterrupts();
    EnableInterrupts();
    while(1);
    return 0;
}
