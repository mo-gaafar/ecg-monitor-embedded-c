#ifndef __PORT_H__
#define __PORT_H__

#include "GPIO.h"

/* Fill missing code below */
/*
    Port.h abstracts the pcb
    remember every pin should have
    PORT_DATA
    PORT_DIRECTION
    PIN

    example:
    #define LED_0_PORT_DATA (GPIO_PORTB_DATA)
    #define LED_0_PORT_DIRECTION (GPIO_PORTB_DIRECTION)
    #define LED_0_PIN (GPIO_PIN_4)
*/

#define LED_0_PORT_DATA (PORT_C)
#define LED_0_PORT_DIRECTION (PORT_C)
#define LED_0_PIN (GPIO_PIN_6)

#define PB_RESET_PORT_DATA (PORT_C)
#define PB_RESET_PORT_DIRECTION (PORT_C)
#define PB_RESET_PIN (GPIO_PIN_7)

#define PB_PLUS_PORT_DATA (PORT_C)
#define PB_PLUS_PORT_DIRECTION (PORT_C)
#define PB_PLUS_PIN (GPIO_PIN_2)

#define SSD_DISPLAY_PORT_DATA (PORT_D)
#define SSD_DISPLAY_PORT_DIRECTION (PORT_D)

#define SSD_EN_PORT_DATA (PORT_C)
#define SSD_EN_PORT_DIRECTION (PORT_C)

#define SSD_STATE_ONES_PIN (GPIO_PIN_2)
#define SSD_STATE_TENS_PIN (GPIO_PIN_3)
#define SSD_STATE_HUNDREDS_PIN (GPIO_PIN_4)
#define SSD_STATE_THOUSANDS_PIN (GPIO_PIN_5)

/* End of code filling */
#endif // __PORT_H__
