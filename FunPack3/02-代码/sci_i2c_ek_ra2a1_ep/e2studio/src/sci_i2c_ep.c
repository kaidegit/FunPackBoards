/***********************************************************************************************************************
 * File Name    : sci_i2c_ep.c
 * Description  : Contains macro and function declarations.
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


/* Private Global Variables */

/* capture callback event for Slave and master module */

/* Capture return value from slave read and write API */


/* for on board LEDs */
extern bsp_leds_t g_bsp_leds;

/*
 * private functions
 */
static void toggle_led(void);

/*******************************************************************************************************************//**
 * @brief     Toggle on board LED, which are connected and supported by BSP
 * @param[IN] None
 * @retval    None
 **********************************************************************************************************************/
static void toggle_led(void)
{
    /* Get LED information (pins) for this board */
    bsp_leds_t leds = g_bsp_leds;

    for(uint8_t cnt = RESET_VALUE; leds.led_count > cnt; cnt++)
    {
        R_IOPORT_PinWrite(g_ioport.p_ctrl, (bsp_io_port_pin_t)leds.p_leds[cnt], (bsp_io_level_t)LED_ON);
        R_BSP_SoftwareDelay(TOGGLE_DELAY, BSP_DELAY_UNITS_MILLISECONDS);

        R_IOPORT_PinWrite(g_ioport.p_ctrl, (bsp_io_port_pin_t)leds.p_leds[cnt], (bsp_io_level_t)LED_OFF);
    }
}

/*******************************************************************************************************************//**
 *  @brief       Turn on_board LED ON or OFF.
 *  @param[IN]   b_value     LED_ON or LED_OFF
 *  @retval      None
 **********************************************************************************************************************/
void set_led(bool b_value)
{
    /* Get LED information (pins) for this board */
    bsp_leds_t leds = g_bsp_leds;

    for(uint8_t cnt = RESET_VALUE ; leds.led_count > cnt; cnt++)
    {
        R_IOPORT_PinWrite(g_ioport.p_ctrl, (bsp_io_port_pin_t)leds.p_leds[cnt], (bsp_io_level_t)b_value);
    }
}



/*******************************************************************************************************************//**
 * @} (end addtogroup sci_i2c_ep)
 **********************************************************************************************************************/
