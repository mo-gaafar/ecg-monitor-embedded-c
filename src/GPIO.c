#include "GPIO.h"

#define SET_REGISTER_PIN(REG, BIT, VAL) ((REG) = (((REG) & (~(1 << BIT))) | ((VAL) << (BIT))))
#define READ_REGISTER_PIN(REG, BIT) ((REG & (1 << BIT)) >> (BIT))

void GPIO_InitPortPin(tPort port, unsigned char pin, tPortDirection direction)
{
    switch (port)
    {
    case PORT_B:
        SET_REGISTER_PIN(GPIO_PORT_CONTROL_1, pin, direction);
        break;
    case PORT_C:
        SET_REGISTER_PIN(GPIO_PORT_CONTROL_2, pin, direction);
        break;
    case PORT_D:
        SET_REGISTER_PIN(GPIO_PORT_CONTROL_3, pin, direction);
        break;
    }
}

void GPIO_InitPort(tPort port, tPortDirection direction)
{
    unsigned char i = 0;
    for (i = PIN0; i < PIN7; i++)
    {
        GPIO_InitPortPin(port, i, direction);
    }
}

void GPIO_Update(void)
{
    /* Should do nothing */
}

void GPIO_SetPortPinState(tPort port, unsigned char pin, unsigned char state)
{
    switch (port)
    {
    case PORT_B:
        SET_REGISTER_PIN(GPIO_PORT_DATA_1, pin, state);
        break;
    case PORT_C:
        SET_REGISTER_PIN(GPIO_PORT_DATA_2, pin, state);
        break;
    case PORT_D:
        SET_REGISTER_PIN(GPIO_PORT_DATA_3, pin, state);
        break;
    }
}

void GPIO_SetPortState(tPort port, unsigned char state)
{
    unsigned char i = 0;

    for (i = 0; i < 8; i++)
    {
        GPIO_SetPortPinState(port, i, READ_REGISTER_PIN(state, i));
    }
}

unsigned char GPIO_GetPortPinState(tPort port, unsigned char pin)
{
    unsigned char ret = 0;

    switch (port)
    {
    case PORT_B:
        ret = READ_REGISTER_PIN(GPIO_PORT_DATA_1, pin);
        break;
    case PORT_C:
        ret = READ_REGISTER_PIN(GPIO_PORT_DATA_2, pin);
        break;
    case PORT_D:
        ret = READ_REGISTER_PIN(GPIO_PORT_DATA_3, pin);
        break;
    }

    return ret;
}
