#ifndef __ADC_H__
#define __ADC_H__

#include "main.h"

// Private variables
#define ADC_INTERRUPT 0

// Public function prototypes

/**
 * @brief Initializes the ADC peripheral
 * @param None
 * @return None
 * @note The ADC peripheral is configured to use the following settings:
 * - ADC clock prescaler = 1
 * - ADC conversion time = 12.5 ADC clock cycles
 * - ADC resolution = 12-bit
 * - ADC data alignment = right
 * - ADC scan mode = single conversion
**/
void ADC_Init(void);

/**
 * @brief Starts the ADC conversion
 * @param channel: the ADC channel to convert
 * @return u16: the ADC conversion result as a 16-bit unsigned integer
**/
u16 ADC_Read(u8 channel);

#endif