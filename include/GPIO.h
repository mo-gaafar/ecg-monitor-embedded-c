#ifndef __GPIO_H__
#define __GPIO_H__

#include <avr/io.h>
#include <util/delay.h>

#define GPIO_PIN_0 (0)
#define GPIO_PIN_1 (1)
#define GPIO_PIN_2 (2)
#define GPIO_PIN_3 (3)
#define GPIO_PIN_4 (4)
#define GPIO_PIN_5 (5)
#define GPIO_PIN_6 (6)
#define GPIO_PIN_7 (7)

// #define GPIO_PORT_0 (PORTA)
#define GPIO_PORT_DATA_1 (PORTB)
#define GPIO_PORT_DATA_2 (PORTC)
#define GPIO_PORT_DATA_3 (PORTD)

#define GPIO_PORT_CONTROL_1 (DDRB)
#define GPIO_PORT_CONTROL_2 (DDRC)
#define GPIO_PORT_CONTROL_3 (DDRD)

typedef enum
{
    PORT_B,
    PORT_C,
    PORT_D,
} tPort;

typedef enum
{
    GPIO_OUT = 1,
    GPIO_IN = 0
} tPortDirection;

void GPIO_InitPortPin(tPort port, unsigned char pin, tPortDirection direction);
void GPIO_InitPort(tPort port, tPortDirection direction);
void GPIO_Update(void);
void GPIO_SetPortPinState(tPort port, unsigned char pin, unsigned char state);
void GPIO_SetPortState(tPort port, unsigned char state);
unsigned char GPIO_GetPortPinState(tPort port, unsigned char pin);
#endif // __GPIO_H__
