#ifndef __PORT_H__
#define __PORT_H__

#include "main.h"

/* Fill missing code below */

/****** PUSH_BUTTONs' pins ******/
#define PB_1_PORT_DR   (GPIO_PORTB_DATA)
#define PB_1_PORT_CR   (GPIO_PORTB_DIRECTION)
#define PB_1_PIN       (GPIO_PIN_0)

#define PB_2_PORT_DR   (GPIO_PORTB_DATA)
#define PB_2_PORT_CR   (GPIO_PORTB_DIRECTION)
#define PB_2_PIN       (GPIO_PIN_1)

#define PB_3_PORT_DR   (GPIO_PORTB_DATA)
#define PB_3_PORT_CR   (GPIO_PORTB_DIRECTION)
#define PB_3_PIN       (GPIO_PIN_2)

#define PB_4_PORT_DR   (GPIO_PORTB_DATA)
#define PB_4_PORT_CR   (GPIO_PORTB_DIRECTION)
#define PB_4_PIN       (GPIO_PIN_3)


/*********** SSDs' pins ************/
#define SSD_1_PORT_DR   (GPIO_PORTB_DATA)
#define SSD_1_PORT_CR   (GPIO_PORTB_DIRECTION)
#define SSD_1_PIN       (GPIO_PIN_7)

#define SSD_2_PORT_DR   (GPIO_PORTB_DATA)
#define SSD_2_PORT_CR   (GPIO_PORTB_DIRECTION)
#define SSD_2_PIN       (GPIO_PIN_6)

#define SSD_3_PORT_DR   (GPIO_PORTB_DATA)
#define SSD_3_PORT_CR   (GPIO_PORTB_DIRECTION)
#define SSD_3_PIN       (GPIO_PIN_5)

#define SDD_4_PORT_DR   (GPIO_PORTB_DATA)
#define SSD_4_PORT_CR   (GPIO_PORTB_DIRECTION)
#define SSD_4_PIN       (GPIO_PIN_4)

/* End of code filling */
#endif // __PORT_H__
