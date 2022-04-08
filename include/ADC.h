#ifndef __ADC_H__
#define __ADC_H__

#include "STD_TYPES.h"

// Private variables

// Public function prototypes
void ADC_Init(void);
u16 ADC_Read(u8 channel);

#endif