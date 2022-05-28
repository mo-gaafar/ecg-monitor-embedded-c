

#ifndef ADC_H
#define ADC_H
#include <main.h>

/**
 * @file       ADC.h
 * @author     Mohamed Nasser
 * @copyright Davide Gironi 2013
 *
 * @brief      ADC driver module
 *
 * @version    1.0
 * @date       2022-5-25
 **/

// setup values
#define ADC_REF 1       // adc reference voltage (see adc_init function for reference)
#define ADC_PRESCALER 2 // adc prescaler (2, 4, 8, 16, 32, 64, 128)
#define ADC_JUSTIFY 'R' // adc justify ('L' or 'R')
#define ADC_TRIGGERON 0 // adc trigger (1 on - 0 off)
#define ADC_REFRES 1024 // reference resolution used for conversions

// bandgap reference voltage * 1000, refers to datasheet
#define ADC_BANDGAPVOLTAGE 1100L

/**
 * @brief Set ADC channel to read from later using ReadSel
 *
 * @param channel selected ADC channel
 **/
void ADC_SetChannel(u8 channel);

/**
 * @brief Read ADC using entered channel argument
 *
 * @param channel selected channel
 * @return u16 10-bit adc reading
 **/
u16 ADC_Read(u8 channel);

/**
 * @brief Reads previously selected channel (use ADC_SetChannel)
 *
 * @return u16  10-bit adc reading
 **/
u16 ADC_ReadSel(void);

/**
 * @brief Initialize ADC module
 * @warning must be called before using adc
 **/
void ADC_Init(void);

/**
 * @brief Converts from adc binary to voltage based on given vref
 *
 * @param adcread input adc value
 * @param adcvref voltage reference
 * @return f64 converted value
 **/
f64 ADC_GetVoltage(u16 adcread, f64 adcvref);

/**
 * @brief Gets ADC reading from channel and returns 8-bit normalized value
 *
 * @param channel selected ADC channel to read from
 * @return u8 normalized ADC value
 **/
u8 ADC_ReadNormalized8Bit(u8 channel);

#endif