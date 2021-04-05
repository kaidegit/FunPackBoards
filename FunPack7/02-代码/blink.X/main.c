/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18446
        Driver Version    :  2.00
 */

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
 */

#include "mcc_generated_files/mcc.h"


void UART_SendString(char * str);
void UART_SendNum(uint16_t num);

/*
                         Main application
 */
void main(void) {
    int pushedTime = 0;
    uint16_t adcValue = 0;
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();

    while (1) {
        //__delay_ms(500);
        //UART_SendString("HelloWorld\r\n");
        if (!Button_GetValue()) {
            __delay_ms(10);
            if (!Button_GetValue()) {
                pushedTime++;
            }
            //UART_SendString("Button is pushed\r\n");
        } else {
            __delay_ms(10);
            if (Button_GetValue()) {
                if (pushedTime < 5) {
                    continue;
                }
                if (pushedTime >= 500) {
                    LED7_Toggle();
                    UART_SendString("Long Push\n");
                    adcValue = ADCC_GetSingleConversion(channel_ANC0);
                    UART_SendNum(adcValue);
                } else if (pushedTime >= 100) {
                    LED6_Toggle();
                    UART_SendString("Short Push\n");
                    adcValue = ADCC_GetSingleConversion(channel_ANC0);
                    UART_SendNum(adcValue);
                } else if (pushedTime >= 5) {
                    LED5_Toggle();
                    UART_SendString("Click\n");
                    adcValue = ADCC_GetSingleConversion(channel_ANC0);
                    UART_SendNum(adcValue);
                }
                pushedTime = 0;
            }
            //UART_SendString("Button is not pushed\r\n");
        }
        //IO_RA1_Toggle();
        //printf("HelloWorld\r\n");
        // Add your application code
    }
}

void UART_SendString(char * str) {
    while (*str) {
        while (!EUSART1_is_tx_ready());
        EUSART1_Write(*str++);
    }
}

void UART_SendNum(uint16_t num){
    uint8_t numarr[5];
    numarr[0] = num / 10000;
    numarr[1] = num / 1000 % 10;
    numarr[2] = num / 100 % 10;
    numarr[3] = num / 10 % 10;
    numarr[4] = num % 10;
    uint8_t i = 0;
    while ((numarr[i] == 0) && (i < 5)){
        i++;
    }
    if (i == 5){
        while (!EUSART1_is_tx_ready());
        EUSART1_Write('0');
    }
    for (;i<5;i++){
        while (!EUSART1_is_tx_ready());
        EUSART1_Write(numarr[i] + '0');
    }
    EUSART1_Write('\n');
}
/**
 End of File
 */