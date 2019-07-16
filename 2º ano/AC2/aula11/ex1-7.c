#include <detpic32.h>

#define WRITE           0x02
#define RDSR            0x05
#define READ            0x03
#define WRSR            0x01
#define WRDI            0x04
#define WREN            0x06
#define EEPROM_CLOCK    500000

void spi2_setClock(unsigned int clock_freq) {
    // Write SPI2BRG register(see introduction for details)
    SPI2BRG = (PBCLK + clock_freq) / (2 * clock_freq) - 1;
}

void spi2_init(void) {
    volatile char trash;

    // Disable SPI2 module
    SPI2CONbits.ON = 0;

    // Configure clock idle state as logic level 0 (see introduction)
    SPI2CONbits.CKP = 0;

    // Configure the clock active transition: from active
    //       state to idle state (1 > 0)
    SPI2CONbits.CKE = 1;

    // Configure SPI data input sample phase bit (middle of data output time)
    SPI2CONbits.SMP = 0;

    // Configure word length (8 bits)
    SPI2CONbits.MODE16 = 0; // 0 = 8 bits, 1 = 16 bits

    // Enable Enhanced buffer mode (this allows the usage of FIFOs RX,TX)
    SPI2CONbits.ENHBUF = 1;

    // Enable slave select support (Master Mode Slave Select)
    SPI2CONbits.MSSEN = 1;

    // Enable master mode
    SPI2CONbits.MSTEN = 1;

    // Clear RX FIFO:
    while(SPI2STATbits.SPIRBE == 0) // while RX FIFO not empty read
        trash = SPI2BUF;            // FIFO (discard data)

    // Clear overflow error flag
    SPI2STATbits.SPIROV = 0;

    // Enable SPI2 module
    SPI2CONbits.ON = 1;
}

char eeprom_readStatus(void) {
    volatile char trash;

    // Clear RX FIFO (discard all data in the reception FIFO)
    while(SPI2STATbits.SPIRBE == 0) trash = SPI2BUF;  

    // Clear overflow error flag bit
    SPI2STATbits.SPIROV = 0;

    SPI2BUF = RDSR;     // Send RDSR command
    SPI2BUF = 0;        // Send anything so that EEPROM clocks data into SO
    while(SPI2STATbits.SPIBUSY); // wait while SPI module is working
    trash = SPI2BUF;    // First char received is garbage (received while
                        // sending command)
    return SPI2BUF;     // Second received character is the STATUS value
}

void eeprom_writeStatusCommand(char command){
    while( eeprom_readStatus() & 0x01 );    // wait while WIP is true (Write In Progress)

    // Copy "command" value to SPI2BUF (TX FIFO)
    SPI2BUF = command;

    // Wait while SPI module is working (SPIBUSY set)
    while(SPI2STATbits.SPIBUSY);   
}

int main(void){
    char status;
    spi2_init();
    spi2_setClock(EEPROM_CLOCK);
    eeprom_writeStatusCommand(WREN);    // Activate write operations
    while(1){
        status = eeprom_readStatus();
        printInt(status, 2 | 4 << 16);
        printStr("\n");
    }
    return 0;
}
