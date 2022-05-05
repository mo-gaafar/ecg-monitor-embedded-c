#ifndef __ADC_H__
#define __ADC_H__

#include "main.h"

// Private variables
#define ADC_INTERRUPT 0

// Public function prototypes
void ADC_Init(void);
u16 ADC_Read(u8 channel);

#endif