/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18446
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
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

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set SDA_Pin aliases
#define SDA_Pin_TRIS                 TRISBbits.TRISB4
#define SDA_Pin_LAT                  LATBbits.LATB4
#define SDA_Pin_PORT                 PORTBbits.RB4
#define SDA_Pin_WPU                  WPUBbits.WPUB4
#define SDA_Pin_OD                   ODCONBbits.ODCB4
#define SDA_Pin_ANS                  ANSELBbits.ANSB4
#define SDA_Pin_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define SDA_Pin_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define SDA_Pin_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define SDA_Pin_GetValue()           PORTBbits.RB4
#define SDA_Pin_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define SDA_Pin_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define SDA_Pin_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define SDA_Pin_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define SDA_Pin_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define SDA_Pin_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define SDA_Pin_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define SDA_Pin_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set SCL_Pin aliases
#define SCL_Pin_TRIS                 TRISBbits.TRISB6
#define SCL_Pin_LAT                  LATBbits.LATB6
#define SCL_Pin_PORT                 PORTBbits.RB6
#define SCL_Pin_WPU                  WPUBbits.WPUB6
#define SCL_Pin_OD                   ODCONBbits.ODCB6
#define SCL_Pin_ANS                  ANSELBbits.ANSB6
#define SCL_Pin_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define SCL_Pin_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define SCL_Pin_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define SCL_Pin_GetValue()           PORTBbits.RB6
#define SCL_Pin_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define SCL_Pin_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define SCL_Pin_SetPullup()          do { WPUBbits.WPUB6 = 1; } while(0)
#define SCL_Pin_ResetPullup()        do { WPUBbits.WPUB6 = 0; } while(0)
#define SCL_Pin_SetPushPull()        do { ODCONBbits.ODCB6 = 0; } while(0)
#define SCL_Pin_SetOpenDrain()       do { ODCONBbits.ODCB6 = 1; } while(0)
#define SCL_Pin_SetAnalogMode()      do { ANSELBbits.ANSB6 = 1; } while(0)
#define SCL_Pin_SetDigitalMode()     do { ANSELBbits.ANSB6 = 0; } while(0)

// get/set channel_ANC2 aliases
#define channel_ANC2_TRIS                 TRISCbits.TRISC2
#define channel_ANC2_LAT                  LATCbits.LATC2
#define channel_ANC2_PORT                 PORTCbits.RC2
#define channel_ANC2_WPU                  WPUCbits.WPUC2
#define channel_ANC2_OD                   ODCONCbits.ODCC2
#define channel_ANC2_ANS                  ANSELCbits.ANSC2
#define channel_ANC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define channel_ANC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define channel_ANC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define channel_ANC2_GetValue()           PORTCbits.RC2
#define channel_ANC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define channel_ANC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define channel_ANC2_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define channel_ANC2_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define channel_ANC2_SetPushPull()        do { ODCONCbits.ODCC2 = 0; } while(0)
#define channel_ANC2_SetOpenDrain()       do { ODCONCbits.ODCC2 = 1; } while(0)
#define channel_ANC2_SetAnalogMode()      do { ANSELCbits.ANSC2 = 1; } while(0)
#define channel_ANC2_SetDigitalMode()     do { ANSELCbits.ANSC2 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/