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

// get/set LED5 aliases
#define LED5_TRIS                 TRISAbits.TRISA1
#define LED5_LAT                  LATAbits.LATA1
#define LED5_PORT                 PORTAbits.RA1
#define LED5_WPU                  WPUAbits.WPUA1
#define LED5_OD                   ODCONAbits.ODCA1
#define LED5_ANS                  ANSELAbits.ANSA1
#define LED5_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define LED5_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define LED5_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define LED5_GetValue()           PORTAbits.RA1
#define LED5_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define LED5_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define LED5_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define LED5_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define LED5_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define LED5_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define LED5_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define LED5_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set LED6 aliases
#define LED6_TRIS                 TRISAbits.TRISA2
#define LED6_LAT                  LATAbits.LATA2
#define LED6_PORT                 PORTAbits.RA2
#define LED6_WPU                  WPUAbits.WPUA2
#define LED6_OD                   ODCONAbits.ODCA2
#define LED6_ANS                  ANSELAbits.ANSA2
#define LED6_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define LED6_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define LED6_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define LED6_GetValue()           PORTAbits.RA2
#define LED6_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define LED6_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define LED6_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define LED6_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define LED6_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define LED6_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define LED6_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define LED6_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set RB5 procedures
#define RB5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define RB5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define RB5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define RB5_GetValue()              PORTBbits.RB5
#define RB5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define RB5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define RB5_SetPullup()             do { WPUBbits.WPUB5 = 1; } while(0)
#define RB5_ResetPullup()           do { WPUBbits.WPUB5 = 0; } while(0)
#define RB5_SetAnalogMode()         do { ANSELBbits.ANSB5 = 1; } while(0)
#define RB5_SetDigitalMode()        do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set RB7 procedures
#define RB7_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define RB7_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define RB7_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define RB7_GetValue()              PORTBbits.RB7
#define RB7_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define RB7_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define RB7_SetPullup()             do { WPUBbits.WPUB7 = 1; } while(0)
#define RB7_ResetPullup()           do { WPUBbits.WPUB7 = 0; } while(0)
#define RB7_SetAnalogMode()         do { ANSELBbits.ANSB7 = 1; } while(0)
#define RB7_SetDigitalMode()        do { ANSELBbits.ANSB7 = 0; } while(0)

// get/set channel_ANC0 aliases
#define channel_ANC0_TRIS                 TRISCbits.TRISC0
#define channel_ANC0_LAT                  LATCbits.LATC0
#define channel_ANC0_PORT                 PORTCbits.RC0
#define channel_ANC0_WPU                  WPUCbits.WPUC0
#define channel_ANC0_OD                   ODCONCbits.ODCC0
#define channel_ANC0_ANS                  ANSELCbits.ANSC0
#define channel_ANC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define channel_ANC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define channel_ANC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define channel_ANC0_GetValue()           PORTCbits.RC0
#define channel_ANC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define channel_ANC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define channel_ANC0_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define channel_ANC0_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define channel_ANC0_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define channel_ANC0_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define channel_ANC0_SetAnalogMode()      do { ANSELCbits.ANSC0 = 1; } while(0)
#define channel_ANC0_SetDigitalMode()     do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set Button aliases
#define Button_TRIS                 TRISCbits.TRISC4
#define Button_LAT                  LATCbits.LATC4
#define Button_PORT                 PORTCbits.RC4
#define Button_WPU                  WPUCbits.WPUC4
#define Button_OD                   ODCONCbits.ODCC4
#define Button_ANS                  ANSELCbits.ANSC4
#define Button_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define Button_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define Button_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define Button_GetValue()           PORTCbits.RC4
#define Button_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define Button_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define Button_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define Button_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define Button_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define Button_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define Button_SetAnalogMode()      do { ANSELCbits.ANSC4 = 1; } while(0)
#define Button_SetDigitalMode()     do { ANSELCbits.ANSC4 = 0; } while(0)

// get/set LED7 aliases
#define LED7_TRIS                 TRISCbits.TRISC5
#define LED7_LAT                  LATCbits.LATC5
#define LED7_PORT                 PORTCbits.RC5
#define LED7_WPU                  WPUCbits.WPUC5
#define LED7_OD                   ODCONCbits.ODCC5
#define LED7_ANS                  ANSELCbits.ANSC5
#define LED7_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define LED7_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define LED7_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define LED7_GetValue()           PORTCbits.RC5
#define LED7_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define LED7_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define LED7_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define LED7_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define LED7_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define LED7_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define LED7_SetAnalogMode()      do { ANSELCbits.ANSC5 = 1; } while(0)
#define LED7_SetDigitalMode()     do { ANSELCbits.ANSC5 = 0; } while(0)

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