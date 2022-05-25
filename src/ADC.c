/*
ADC Library 0x05

copyright (c) Davide Gironi, 2013

Released under GPLv3.
Please refer to LICENSE file for licensing information.
*/
#include <main.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "ADC.h"

// complete this if trigger is on
// call ADC_SetChannel()
// call sei()
// ISR(ADC_vect)
//{
// }

/*
 * set an adc channel
 */
void ADC_SetChannel(u8 channel)
{
    ADCSRA &= ~(1 << ADEN);
    ADMUX = (ADMUX & 0xf8) | (channel & 0x07); // set channel
    ADCSRA |= (1 << ADEN);
}

/*
 * read from selected adc channel
 */
u16 ADC_ReadSel(void)
{
    ADCSRA |= (1 << ADSC); // Start conversion
    while (ADCSRA & _BV(ADSC))
        ;
    // while( !(ADCSRA & (1<<ADIF)) ); // Wait for conversion to complete
    uint16_t adc = ADC;
    // ADCSRA |= (1 << ADIF); // Clear ADIF by writing one to it
    return (adc);
}

/*
 * read from adc channel
 */
u16 ADC_Read(u8 channel)
{
    ADC_SetChannel(channel);
    return ADC_ReadSel();
}

/*
 * init adc
 */
void ADC_Init(void)
{
    // Set ADC reference

#if ADC_REF == 0
    ADMUX |= (0 << REFS1) | (0 << REFS0); // AREF, Internal Vref turned off
#elif ADC_REF == 1
    ADMUX |= (0 << REFS1) | (1 << REFS0);                 // AVCC with external capacitor at AREF pin
#elif ADC_REF == 3
    ADMUX |= (1 << REFS1) | (1 << REFS0);                 // Internal 2.56V Voltage Reference with external cap at AREF
#endif

// Set ADC prescaler
#if ADC_PRESCALER == 2
    ADCSRA |= (0 << ADPS2) | (0 << ADPS1) | (1 << ADPS0); // Prescaler 2
#elif ADC_PRESCALER == 4
    ADCSRA |= (0 << ADPS2) | (1 << ADPS1) | (0 << ADPS0); // Prescaler 4
#elif ADC_PRESCALER == 8
    ADCSRA |= (0 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Prescaler 8
#elif ADC_PRESCALER == 16
    ADCSRA |= (1 << ADPS2) | (0 << ADPS1) | (0 << ADPS0); // Prescaler 16
#elif ADC_PRESCALER == 32
    ADCSRA |= (1 << ADPS2) | (0 << ADPS1) | (1 << ADPS0); // Prescaler 32
#elif ADC_PRESCALER == 64
    ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (0 << ADPS0); // Prescaler 64
#elif ADC_PRESCALER == 128
    ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Prescaler 128
#endif

// Set ADC justify
#if ADC_JUSTIFY == 'L'
    ADMUX |= (1 << ADLAR); // Left adjust ADC result to allow easy 8 bit reading
#elif ADC_JUSTIFY == 'R'
    ADMUX |= (0 << ADLAR);                                // Right adjust
#endif

// Set ADC trigger and mode
#if ADC_TRIGGERON == 1
#if defined(__AVR_ATtiny13A__) || defined(__AVR_ATmega168__) || defined(__AVR_ATmega168P__) || defined(__AVR_ATmega328__) || defined(__AVR_ATmega328P__)
    ADCSRB |= (0 << ADTS2) | (0 << ADPS1) | (0 << ADPS0); // Free Running mode
    ADCSRA |= (1 << ADATE);                               // Enable ADC Interrupt
#elif defined(__AVR_ATmega8__)
    ADCSRA |= (1 << ADFR); // Set ADC to Free-Running Mode
#endif
    ADCSRA |= (1 << ADIE); // Enable ADC Interrupt
#else
    ADCSRB |= (0 << ADTS2) | (0 << ADPS1) | (0 << ADPS0); // Free Running mode
#endif

    // Enable ADC
    ADCSRA |= (1 << ADEN);

    // DIDR0 = 0xff;

#if ADC_TRIGGERON == 1
    ADCSRA |= (1 << ADSC); // Start conversions
#endif
}

/*
 * get reference voltage using bandgap voltage
 */
double ADC_GetRealVref(void)
{
    double intvoltage = 0;
#if defined(__AVR_ATmega8__) || defined(__AVR_ATmega168__) || defined(__AVR_ATmega168P__) || defined(__AVR_ATmega328__) || defined(__AVR_ATmega328P__)
    // set bandgap voltage channel, and read value
    ADC_SetChannel(14);
    _delay_us(250);
    uint16_t adc = ADC_ReadSel();
    // calculate internal voltage
    intvoltage = ((ADC_BANDGAPVOLTAGE * ADC_REFRES) / adc) / 1000.0;
#endif
    return intvoltage;
}

/*
 * convert an adc value to a resistence value
 */
f64 ADC_GetResistance(u16 adcread, u16 adcbalanceresistor)
{
    if (adcread == 0)
        return 0;
    else
        return (f64)((f64)(ADC_REFRES * (f64)adcbalanceresistor) / adcread - (f64)adcbalanceresistor);
}

/*
 * convert an adc value to a voltage value
 */
f64 ADC_GetVoltage(u16 adcread, f64 adcvref)
{
    if (adcread == 0)
        return 0;
    else
        return (f64)(adcread * adcvref / (f64)ADC_REFRES);
}



u8 ADC_ReadNormalized8Bit(u8 channel)
{
    u8 normalized = (u8)(ADC_Read(channel) / 4);
    return normalized;
}