#include <detpic32.h>

int baudrate = 115200;

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

void configUART(){
    // 1 - Configure BaudRate Generator
    U1MODEbits.BRGH = 0;    // fator de divisao 16
    U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1;

    // 2 - Cofigure number of data bits, parity and number of stop bits
    U1MODEbits.PDSEL = 00;
    U1MODEbits.STSEL = 0;

    // 3 - Enable the transmitter and receiver modules
    U1STAbits.UTXEN = 1;
    U1STAbits.URXEN = 1;

    // 4 - Enable UART
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
    configUART();

    while(1){
        puts("String de teste\n");
        delay(1000);
    }
    return 0;
}
