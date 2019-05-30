#include <detpic32.h>

#define I2C_READ    1
#define I2C_WRITE   0
#define I2C_ACK     0
#define I2C_NACK    1

#define SENS_ADDRESS    0x4D    // device dependent
#define ADDR_WR         ((SENS_ADDRESS << 1) | I2C_WRITE)
#define ADDR_RD         ((SENS_ADDRESS << 1) | I2C_READ)
#define TC74_CLK_FREQ   100000  // 100 KHz
#define RTR             0       // Read temperature command


void i2c1_init(unsigned int clock_freq){
    // Config baudrate generator (see introduction for details)
    I2C1BRG = (PBCLK + clock_freq) / (2 * clock_freq);

    // Enable I2C1 module
    I2C1CONbits.ON = 1;
}

void i2c1_start(void) {
    // Wait until the lower 5 bits of I2CxCON are all 0 (the lower 5 bits of I2CxCON must be 0 before attempting to set the SEN bit)
    while((I2C1CON & 0x001F) != 0);

    // Activate Start event (I2C1CON, bit SEN)
    I2C1CONbits.SEN = 1;

    // Wait for completion of the Start event (I2C1CON, bit SEN)
    while(I2C1CONbits.SEN);
}

void i2c1_stop(void) {
    // Wait until the lower 5 bits of I2CxCON are all 0 (the lower 5 bits of I2CxCON must be 0 before attempting to set the PEN bit)
    while((I2C1CON & 0x001F) != 0);

    // Activate Stop event (I2C1CON, bit PEN)
    I2C1CONbits.PEN = 1;

    // Wait for completion of the Stop event (I2C1CON, bit PEN)
    while(I2C1CONbits.PEN);
}

int i2c1_send(unsigned char value) {
    // Copy "value" to I2C1TRN register
    I2C1TRN = value;

    // Wait while master transmission is in progress (8 bits + ACK\)(I2C1STAT, bit TRSTAT – transmit status bit)
    while(I2C1STATbits.TRSTAT);

    // Return acknowledge status bit (I2C1STAT, bit ACKSTAT)
    return I2C1STATbits.ACKSTAT;
}

char i2c1_receive(char ack_bit) {
    // Wait util the lower 5 bits of I2C1CON are all 0 (the lower 5 bits
    //      of I2C1CON must be 0 before attempting to set the RCEN bit)
    while((I2C1CON & 0x001F) != 0);
    
    // Activate RCEN bit (receive enable bit, I2C1CON register)
    I2C1CONbits.RCEN = 1;
    
    // Wait while byte not received (I2C1STAT, bit RBF – receive buffer
    //      full status bit)
    while(I2C1STATbits.RBF);
    
    // Send ACK / NACK bit. For that:
    //     1. Copy "ack_bit" to I2C1CON, bit ACKDT (be sure "ack_bit" value
    //        is only 0 or 1)
    I2C1CONbits.ACKDT = ack_bit;

    //     2. Wait until the lower 5 bits of I2C1CON are all 0 (the lower
    //        5 bits of I2C1CON must be 0 before attempting to
    //        set the ACKEN bit.
    while((I2C1CON & 0x001F) != 0);

    //     3. Start Acknowledge sequence (I2C1CON register, bit ACKEN=1)
    I2C1CONbits.ACKEN = 1;

    // Wait for completion of Acknowledge sequence (I2C1CON, bit ACKEN)
    while(I2C1CONbits.ACKEN);

    // Return received value (I2C1RCV)
    return I2C1RCV;
}

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK/1000);
    }
}

int main(void){
    int ack, temperature;
    i2c1_init(TC74_CLK_FREQ);

    while(1){
        // Send start event 
        i2c1_start();

        // Send Address + WR (ADDR_WR); copy return value to "ack" variable
        ack = i2c1_send(ADDR_WR);

        // Send Command (RTR); add return value to "ack" variable
        ack += i2c1_send(RTR);

        // Send Start event (again)
        i2c1_start();

        // Send Address + RD (ADDR_RD); add return value to "ack" variable
        ack += i2c1_send(ADDR_RD);

        // Test "ack" variable; if "ack" != 0 then an error has occurred;
        //     send the Stop event, print an error message and exit loop
        if(ack != 0){
            i2c1_stop();
            printf("ERROR\n");
            break;
        }

        // Receive a value from slave (send NACK as argument); copy
        //     received value to "temperature" variable
        temperature = i2c1_receive(I2C_NACK);

        // Send Stop event
        i2c1_stop();

        // Print "temperature" variable (syscall printInt10)
        //printInt10(temperature);
        printf("Temperature: %d\r", temperature);

        // Wait 250 ms
        delay(250);
    }

    return 0;
}
