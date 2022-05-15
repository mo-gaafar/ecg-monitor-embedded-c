/*
ADC Library 0x05

copyright (c) Davide Gironi, 2013

Released under GPLv3.
Please refer to LICENSE file for licensing information.
*/

#ifndef ADC_H
#define ADC_H
#include <main.h>

// setup values
#define ADC_REF 1       // adc reference voltage (see adc_init function for reference)
#define ADC_PRESCALER 2 // adc prescaler (2, 4, 8, 16, 32, 64, 128)
#define ADC_JUSTIFY 'R' // adc justify ('L' or 'R')
#define ADC_TRIGGERON 0 // adc trigger (1 on - 0 off)
#define ADC_REFRES 1024 // reference resolution used for conversions

// bandgap reference voltage * 1000, refers to datasheet
#define ADC_BANDGAPVOLTAGE 1100L

// functions
void ADC_SetChannel(u8 channel);
u16 ADC_Read(u8 channel);
u16 ADC_ReadSel(void);
void ADC_Init(void);
f64 ADC_GetRealVref(void);
f64 ADC_GetResistance(u16 adcread, u16 adcbalanceresistor);
f64 ADC_GetVoltage(u16 adcread, f64 adcvref);
u16 ADC_EMAFilter(u16 newvalue, u16 value);
u8 ADC_ReadNormalized8Bit(u8 channel);

#endif