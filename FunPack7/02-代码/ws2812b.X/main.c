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

#define LEDNUM 8

void ResetDataFlow(void);
void SendOnePix(uint8_t *ptr);

/*
                         Main application
 */
void main(void)
{
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

    uint8_t a[3] = {0,0,50};
    uint8_t b[3] = {0,50,0};
    uint8_t c[3] = {50,0,0};
    uint8_t d[3] = {50,50,50};
    uint8_t e[3] = {0,0,0};
    uint8_t i,j;
    ResetDataFlow();
    while (1){
        for (i = 0; i < LEDNUM; i++){
            SendOnePix(a);
            __delay_ms(100);
        }
        __delay_ms(1000);
        for (i = 0; i < LEDNUM; i++){
            SendOnePix(b);
        }
        __delay_ms(1000);
        for (i = 0; i < LEDNUM; i++){
            SendOnePix(c);
        }
        __delay_ms(1000);
        for (i = 0; i < LEDNUM; i++){
            SendOnePix(d);
        }
        __delay_ms(1000);
        for (i = 0; i < LEDNUM; i++){
            for (j = 0; j < i + 1; j++){
                SendOnePix(a);
            }
            for (; j < LEDNUM; j++){
                SendOnePix(e);
            }
            __delay_ms(100);
        }
    }
}

void ResetDataFlow(void){
    __delay_us(60);
}

void SendOnePix(uint8_t *ptr){
    uint8_t i, j;
    uint8_t temp;

    for (j = 0; j < 3; j++){
        temp = ptr[j];
        for (i = 0; i < 8; i++){
            if (temp & 0x80){
                WS2812_Pin_SetHigh();
                __delay_us(0.85);
                WS2812_Pin_SetLow();
                __delay_us(0.4);
            }else{
                WS2812_Pin_SetHigh();
                __delay_us(0.4);
                WS2812_Pin_SetLow();
                __delay_us(0.85);
            }
            temp = (temp << 1); 
        }
    }
}

/**
 End of File
*/