
#include "Port.h"
#include "Led.h"

void LED_Init(tLED led, tLED_State state)
{
    /* Add your code here! */
    /* Configure led pins as output */
    switch (led)
    {
    case LED_ALARM:                                                          // led
        GPIO_InitPortPin(LED_ALARM_PORT_DIRECTION, LED_ALARM_PIN, GPIO_OUT); // led_port, led_pin, in or out
        break;
    case LED_PROCESSING:                                                               // led
        GPIO_InitPortPin(LED_PROCESSING_PORT_DIRECTION, LED_PROCESSING_PIN, GPIO_OUT); // led_port, led_pin, in or out
        break;
    default:
        /* Should not come here */
        break;
    }
    /* Set led state */
    LED_SetState(led, state);
    /* End of your code */
}

void LED_Toggle(tLED led)
{
    /* Add your code here! */
    /* Toggle led */ if (LED_GetState(led) == LED_ON)
    {
        LED_SetState(led, LED_OFF);
    }
    else
    {
        LED_SetState(led, LED_ON);
    }

    /* Delay to show toggling effect */

    /* End of your code */
}

void LED_SetState(tLED led, tLED_State state)
{
    /* Add your code here! */

    /* Set led state */
    switch (led)
    {
    case LED_ALARM:                                                   // led
        GPIO_WritePortPin(LED_ALARM_PORT_DATA, LED_ALARM_PIN, state); // led_port, led_pin
        break;
    case LED_PROCESSING:                                                        // led
        GPIO_WritePortPin(LED_PROCESSING_PORT_DATA, LED_PROCESSING_PIN, state); // led_port, led_pin
        break;

    default:
        /* Should not come here */
        break;
    }

    /* End of your code */
}

tLED_State LED_GetState(tLED led)
{
    tLED_State ret;

    /* Add your code here! */
    /* Set led state */
    switch (led)
    {
    case LED_ALARM:
        ret = GPIO_ReadPortPin(LED_ALARM_PORT_DATA, LED_ALARM_PIN); // led_port, led_pin
        break;
    case LED_PROCESSING:
        ret = GPIO_ReadPortPin(LED_PROCESSING_PORT_DATA, LED_PROCESSING_PIN); // led_port, led_pin
        break;
    default:
        /* Should not come here */
        break;
    }

    /* End of your code */
    return ret;
}

void LED_On(tLED led)
{
    LED_SetState(led, LED_ON);
}

void LED_Off(tLED led)
{
    LED_SetState(led, LED_OFF);
}
