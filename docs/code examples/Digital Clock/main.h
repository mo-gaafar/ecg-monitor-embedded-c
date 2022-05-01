#ifndef __MAIN_H__
#define __MAIN_H__

#include <pic16f877a.h>

/* Fill missing code below */
/* GPIO definitions */
/* GPIO Pins */
#define GPIO_PIN_0              (0)
#define GPIO_PIN_1              (1)
#define GPIO_PIN_2              (2)
#define GPIO_PIN_3              (3)
#define GPIO_PIN_4              (4)
#define GPIO_PIN_5              (5)
#define GPIO_PIN_6              (6)
#define GPIO_PIN_7              (7)

/* GPIO Port Registers redefinition */
#define GPIO_PORTA_DATA         (PORTA)
#define GPIO_PORTA_DIRECTION    (TRISA)

#define GPIO_PORTB_DATA         (PORTB)
#define GPIO_PORTB_DIRECTION    (TRISB)

#define GPIO_PORTC_DATA         (PORTC)
#define GPIO_PORTC_DIRECTION    (TRISC)

#define GPIO_PORTD_DATA         (PORTD)
#define GPIO_PORTD_DIRECTION    (TRISD)

#define GPIO_PORTE_DATA         (PORTE)
#define GPIO_PORTE_DIRECTION    (TRISE)

/* GPIO direction setting */
#define GPIO_OUT                (0)
#define GPIO_IN                 (1)

/* GPIO port operations */
#define GPIO_InitPort(CONTROL, DIRECTION)   ((CONTROL) = ((DIRECTION)? (~GPIO_OUT):(GPIO_OUT)))
#define GPIO_WritePort(PORT, DATA)          ((PORT) = (DATA))
#define GPIO_ReadPort(PORT)                 (PORT)

/* GPIO port pin operations */
#define GPIO_InitPortPin(CONTROL, PIN, DIRECTION)   ((CONTROL) = (CONTROL & (~(1 << PIN)))|(DIRECTION << PIN))
#define GPIO_WritePortPin(PORT, PIN, DATA)          ((PORT) = (PORT & (~(1 << PIN)))|(DATA << PIN))
#define GPIO_ReadPortPin(PORT, PIN)                 (((PORT) & (1 << PIN)) >> (PIN))
/* End of code filling */

/* Standard data types */
typedef unsigned int tWord;

#endif // __MAIN_H__


