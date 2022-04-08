#ifndef __PORT_H__
#define __PORT_H__

#include "GPIO.h"

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

#define BUZ_PORT_DATA (PORT_B)
#define BUZ_PORT_DIRECTION (PORT_B)
#define BUZ_PIN (GPIO_PIN_1)

/*LED*/

#define LED_ALARM_PORT_DATA (PORT_B)
#define LED_ALARM_PORT_DIRECTION (PORT_B)
#define LED_ALARM_PIN (GPIO_PIN_2)

#define LED_PROCESSING_PORT_DATA (PORT_B)
#define LED_PROCESSING_PORT_DIRECTION (PORT_B)
#define LED_PROCESSING_PIN (GPIO_PIN_3)

/*LCD*/

#define LCD_RS_PORT_DATA (PORT_D)
#define LCD_RS_PORT_DIRECTION (PORT_D)
#define LCD_RS_PIN (GPIO_PIN_1)

#define LCD_RW_PORT_DATA (PORT_D)
#define LCD_RW_PORT_DIRECTION (PORT_D)
#define LCD_RW_PIN (GPIO_PIN_2)

#define LCD_E_PORT_DATA (PORT_D)
#define LCD_E_PORT_DIRECTION (PORT_D)
#define LCD_E_PIN (GPIO_PIN_3)

#define LCD_D4_PORT_DATA (PORT_D)
#define LCD_D4_PORT_DIRECTION (PORT_D)
#define LCD_D4_PIN (GPIO_PIN_4)

#define LCD_D5_PORT_DATA (PORT_D)
#define LCD_D5_PORT_DIRECTION (PORT_D)
#define LCD_D5_PIN (GPIO_PIN_5)

#define LCD_D6_PORT_DATA (PORT_D)
#define LCD_D6_PORT_DIRECTION (PORT_D)
#define LCD_D6_PIN (GPIO_PIN_6)

#define LCD_D7_PORT_DATA (PORT_D)
#define LCD_D7_PORT_DIRECTION (PORT_D)
#define LCD_D7_PIN (GPIO_PIN_7)

//########################################################################//
//__________________________INPUT PORTS___________________________________//
//########################################################################//

/*ADC*/

#define ADC_ECG_IN_PORT_DATA (PORT_C)
#define ADC_ECG_IN_PORT_DIRECTION (PORT_C)
#define ADC_ECG_IN_PIN (GPIO_PIN_0)

/*BUTTON*/

#define PB_DISP_SLEEP_PORT_DATA (PORT_C)
#define PB_DISP_SLEEP_PORT_DIRECTION (PORT_C)
#define PB_DISP_SLEEP_PIN (GPIO_PIN_1)

#define PB_VOL_MINUS_PORT_DATA (PORT_C)
#define PB_VOL_MINUS_PORT_DIRECTION (PORT_C)
#define PB_VOL_MINUS_PIN (GPIO_PIN_2)

#define PB_VOL_PLUS_PORT_DATA (PORT_C)
#define PB_VOL_PLUS_PORT_DIRECTION (PORT_C)
#define PB_VOL_PLUS_PIN (GPIO_PIN_3)

#define PB_SNOOZE_PORT_DATA (PORT_C)
#define PB_SNOOZE_PORT_DIRECTION (PORT_C)
#define PB_SNOOZE_PIN (GPIO_PIN_4)

// #define PB_DISP_SLEEP_PORT_DATA (PORT_C)
// #define PB_DISP_SLEEP_PORT_DIRECTION (PORT_C)
// #define PB_DISP_SLEEP_PIN (GPIO_PIN_5)

/* End of code filling */
#endif // __PORT_H__
