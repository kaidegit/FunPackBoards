/* 
 * File:   soft_i2c.h
 * Author: kai
 *
 * Created on April 22, 2021, 5:47 PM
 */

#ifndef SOFT_I2C_H
#define	SOFT_I2C_H

#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/mcc.h"

#ifdef	__cplusplus
extern "C" {
#endif

/**
 * @brief Set the SDA Pin.
 * 
 */
void SDA_Set();

/**
 * @brief Reset the SDA Pin
 * 
 */
void SDA_Reset() ;

/**
 * @brief Set the SCL Pin
 * 
 */
void SCL_Set() ;

/**
 * @brief Reset the SCL Pin
 * 
 */
void SCL_Reset() ;

/**
 * @brief delay microsecond
 * 
 */
void Delay_us(uint32_t us);

/**
 * @brief read the state of the SDA Pin
 * @note the SDA Pin should be switched to input mode if 
 *      using push-pull mode
 * @return true if the SDA Pin is Set
 * @return false if the SDA Pin is Reset
 */
bool ReadSDAState();

/**
 * @brief start the i2c communication
 * 
 */
void Soft_I2c_Start();

/**
 * @brief stop the i2c communication
 * 
 */
void Soft_I2c_Stop();

/**
 * @brief send a byte to the i2c bus
 * 
 * @param dat 
 */
void Soft_I2c_SendByte(uint8_t dat);

/**
 * @brief check if it is a device responsing
 * 
 * @return true if it is a device responsing
 * @return false no device responsing
 */
bool Soft_I2c_WaitAck();

/**
 * @brief send 3 bytes to the i2c bus.
 * 
 * @param DevAddr device address
 * @param cmd the first data
 * @param dat the second data
 */
void Soft_I2c_Send(uint8_t DevAddr, uint8_t cmd, uint8_t dat);



#ifdef	__cplusplus
}
#endif

#endif	/* SOFT_I2C_H */

