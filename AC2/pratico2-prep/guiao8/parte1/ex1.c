#include <detpic32.h>

int baudrate = 115200;

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

int main(void){
    configUART();
    return 0;
}
