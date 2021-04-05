/***********************************************************************************************************************
 * File Name    : hal_entry.c
 * Description  : Contains data structures and functions used in hal_entry.c.
 **********************************************************************************************************************/
/***********************************************************************************************************************
 * DISCLAIMER
 * This software is supplied by Renesas Electronics Corporation and is only intended for use with Renesas products. No
 * other uses are authorized. This software is owned by Renesas Electronics Corporation and is protected under all
 * applicable laws, including copyright laws.
 * THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIES REGARDING
 * THIS SOFTWARE, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED. TO THE MAXIMUM
 * EXTENT PERMITTED NOT PROHIBITED BY LAW, NEITHER RENESAS ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES
 * SHALL BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR ANY REASON RELATED TO THIS
 * SOFTWARE, EVEN IF RENESAS OR ITS AFFILIATES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
 * Renesas reserves the right, without notice, to make changes to this software and to discontinue the availability of
 * this software. By using this software, you agree to the additional terms and conditions found by accessing the
 * following link:
 * http://www.renesas.com/disclaimer
 *
 * Copyright (C) 2020 Renesas Electronics Corporation. All rights reserved.
 ***********************************************************************************************************************/


#include "common_utils.h"
#include "sci_i2c_ep.h"
/*******************************************************************************************************************//**
 * @addtogroup sci_i2c_ep
 * @{
 **********************************************************************************************************************/

uint32_t R_REF = 9950;
uint32_t R_ADC = 293053;

void R_BSP_WarmStart(bsp_warm_start_event_t event);

/*******************************************************************************************************************//**
 * The RA Configuration tool generates main() and uses it to generate threads if an RTOS is used.  This function is
 * called by main() when no RTOS is used.
 **********************************************************************************************************************/

uint32_t measure(){
    uint32_t Rx;
    adc_status_t status;
    uint32_t ADCMiddleSum = 0;
    uint16_t ADCMiddle;
    for (int i =0;i<32;i++){
        R_ADC_ScanStart(&g_adc0_ctrl);
        status.state = ADC_STATE_SCAN_IN_PROGRESS;
        while (ADC_STATE_SCAN_IN_PROGRESS == status.state)
            R_ADC_StatusGet(&g_adc0_ctrl, &status);
        R_ADC_Read(&g_adc0_ctrl, ADC_CHANNEL_0, &ADCMiddle);
        if (ADCMiddle>=32767)
            ADCMiddle = 0;
        ADCMiddleSum += ADCMiddle;
    }
    ADCMiddle = (uint16_t) (ADCMiddleSum / 32);
    APP_PRINT("Vol:%dmV",ADCMiddle*3300/32767);
    //Rx = (uint32_t) (R_REF / (32767/(double)ADCMiddle-1));
    Rx = (uint32_t) 1 / ((32767/(double)ADCMiddle-1)/R_REF - 1/(double)R_ADC);
    return Rx;
}

void hal_entry(void)
{
    fsp_err_t          err        = FSP_SUCCESS;
    //err = R_IOPORT_PinCfg(&g_ioport_ctrl, BSP_IO_PORT_02_PIN_05, BSP_IO_DIRECTION_OUTPUT);
    //R_IOPORT_PinCfg(&g_ioport_ctrl,BSP_IO_PORT_02_PIN_12, IOPORT_CFG_NMOS_ENABLE | IOPORT_CFG_PORT_DIRECTION_OUTPUT | IOPORT_CFG_PORT_OUTPUT_HIGH | IOPORT_CFG_PULLUP_ENABLE);
    //R_IOPORT_PinCfg(&g_ioport_ctrl, BSP_IO_PORT_02_PIN_05, BSP_IO_DIRECTION_OUTPUT);
    //APP_PRINT("%d ",err);
    APP_PRINT("HelloWorld\n");
    R_ADC_Open(&g_adc0_ctrl, &g_adc0_cfg);
    R_ADC_ScanCfg(&g_adc0_ctrl, &g_adc0_channel_cfg);
    uint32_t R;
    while(true){
        //set_led(LED_ON);
        R = measure();
        APP_PRINT("R:%d\n",R);
        R_IOPORT_PinWrite(&g_ioport_ctrl, BSP_IO_PORT_02_PIN_05, BSP_IO_LEVEL_HIGH);
        R_BSP_SoftwareDelay(DELAY_OPERATION, BSP_DELAY_UNITS_SECONDS);

        //set_led(LED_OFF);
        R_IOPORT_PinWrite(&g_ioport_ctrl, BSP_IO_PORT_02_PIN_05, BSP_IO_LEVEL_LOW);
        R_BSP_SoftwareDelay(DELAY_OPERATION, BSP_DELAY_UNITS_SECONDS);
    }
}


/*******************************************************************************************************************//**
 * This function is called at various points during the startup process.  This implementation uses the event that is
 * called right before main() to set up the pins.
 *
 * @param[in]  event    Where at in the start up process the code is currently at
 **********************************************************************************************************************/
void R_BSP_WarmStart(bsp_warm_start_event_t event)
{
    if (BSP_WARM_START_POST_C == event)
    {
        /* C runtime environment and system clocks are setup. */

        /* Configure pins. */
        R_IOPORT_Open (&g_ioport_ctrl, &g_bsp_pin_cfg);
    }
}


/*******************************************************************************************************************//**
 * @} (end addtogroup sci_i2c_ep)
 **********************************************************************************************************************/
