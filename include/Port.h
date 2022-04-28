#ifndef __PORT_H__
#define __PORT_H__

#include "main.h"

/*
    Port.h abstracts the pcb
    remember every pin should have
    PORT_DATA
    PORT_DIRECTION
    PIN
*/

//########################################################################//
//__________________________OUTPUT PORTS__________________________________//
//########################################################################//

/*BUZZER*/

#define BUZ_PORT_DATA (PORTB)
#define BUZ_PORT_DIRECTION (PORTB)
#define BUZ_PIN (GPIO_PIN_1)

/*LED*/

#define LED_ALARM_PORT_DATA (PORTB)
#define LED_ALARM_PORT_DIRECTION (PORTB)
#define LED_ALARM_PIN (GPIO_PIN_2)

#define LED_PROCESSING_PORT_DATA (PORTB)
#define LED_PROCESSING_PORT_DIRECTION (PORTB)
#define LED_PROCESSING_PIN (GPIO_PIN_3)

/*LCD*/

#define LCD_RS (GPIO_PIN_1)
#define LCD_RW (GPIO_PIN_2)
#define LCD_EN (GPIO_PIN_3)
#define LCD_CPRT_DR (GPIO_PORT_3_DATA)
#define lCD_CPRT_CR (GPIO_PORT_3_DIRECTION)
#define LCD_DPRT_DR (GPIO_PORT_3_DATA)
#define LCD_DPRT_CR (GPIO_PORT_3_DIRECTION)

//########################################################################//
//__________________________INPUT PORTS___________________________________//
//########################################################################//

/*ADC*/

#define ADC_ECG_IN_PORT_DATA (PORTC)
#define ADC_ECG_IN_PORT_DIRECTION (PORTC)
#define ADC_ECG_IN_PIN (GPIO_PIN_0)

/*BUTTON*/

#define PB_DISP_SLEEP_PORT_DATA (PORTC)
#define PB_DISP_SLEEP_PORT_DIRECTION (PORTC)
#define PB_DISP_SLEEP_PIN (GPIO_PIN_1)

#define PB_VOL_MINUS_PORT_DATA (PORTC)
#define PB_VOL_MINUS_PORT_DIRECTION (PORTC)
#define PB_VOL_MINUS_PIN (GPIO_PIN_2)

#define PB_VOL_PLUS_PORT_DATA (PORTC)
#define PB_VOL_PLUS_PORT_DIRECTION (PORTC)
#define PB_VOL_PLUS_PIN (GPIO_PIN_3)

#define PB_SNOOZE_PORT_DATA (PORTC)
#define PB_SNOOZE_PORT_DIRECTION (PORTC)
#define PB_SNOOZE_PIN (GPIO_PIN_4)

// #define PB_DISP_SLEEP_PORT_DATA (PORTC)
// #define PB_DISP_SLEEP_PORT_DIRECTION (PORTC)
// #define PB_DISP_SLEEP_PIN (GPIO_PIN_5)

/* End of code filling */
#endif // __PORT_H__
