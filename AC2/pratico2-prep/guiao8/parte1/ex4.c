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

int main(void){
    //configUart(600, 'N', 1);
    //configUart(1200, 'O', 2);
    //configUart(9600, 'E', 1);
    //configUart(19200, 'E', 1);
    //configUart(115200, 'E', 1);
    configUart(115200, 'N', 1);

    while(1){
        puts("String de teste\n");
        delay(1000);
    }
    return 0;
}
