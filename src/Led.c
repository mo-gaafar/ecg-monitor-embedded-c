// #include "GPIO.h"
// #include "Port.h"
// #include "Led.h"

// void LED_Init(tLED led, tLED_State state)
// {
//     /* Add your code here! */
//     /* Configure led pins as output */
//     switch (led)
//     {
//     case LED_0:                                                      // led
//         GPIO_InitPortPin(LED_0_PORT_DIRECTION, LED_0_PIN, GPIO_OUT); // led_port, led_pin, in or out
//         break;
//     // case LED_1:                                                      // led
//     //     GPIO_InitPortPin(LED_1_PORT_DIRECTION, LED_1_PIN, GPIO_OUT); // led_port, led_pin, in or out
//     //     break;
//     // case LED_2:                                                      // led
//     //     GPIO_InitPortPin(LED_2_PORT_DIRECTION, LED_2_PIN, GPIO_OUT); // led_port, led_pin, in or out
//     //     break;
//     // case LED_3:                                                      // led
//     //     GPIO_InitPortPin(LED_3_PORT_DIRECTION, LED_3_PIN, GPIO_OUT); // led_port, led_pin, in or out
//     //     break;
//     // case LED_4:                                                      // led
//     //     GPIO_InitPortPin(LED_4_PORT_DIRECTION, LED_4_PIN, GPIO_OUT); // led_port, led_pin, in or out
//     //     break;
//     default:
//         /* Should not come here */
//         break;
//     }
//     /* Set led state */
//     LED_SetState(led, state);
//     /* End of your code */
// }

// void LED_Toggle(tLED led)
// {
//     /* Add your code here! */
//     /* Toggle led */ if (LED_GetState(led) == LED_ON)
//     {
//         LED_SetState(led, LED_OFF);
//     }
//     else
//     {
//         LED_SetState(led, LED_ON);
//     }

//     /* Delay to show toggling effect */

//     /* End of your code */
// }

// void LED_SetState(tLED led, tLED_State state)
// {
//     /* Add your code here! */

//     /* Set led state */
//     switch (led)
//     {
//     case LED_0:                                               // led
//         GPIO_WritePortPin(LED_0_PORT_DATA, LED_0_PIN, state); // led_port, led_pin
//         break;
//     // case LED_1:                                               // led
//     //     GPIO_WritePortPin(LED_1_PORT_DATA, LED_1_PIN, state); // led_port, led_pin
//     //     break;
//     // case LED_2:                                               // led
//     //     GPIO_WritePortPin(LED_2_PORT_DATA, LED_2_PIN, state); // led_port, led_pin
//     //     break;
//     // case LED_3:                                               // led
//     //     GPIO_WritePortPin(LED_3_PORT_DATA, LED_3_PIN, state); // led_port, led_pin
//     //     break;
//     // case LED_4:                                               // led
//     //     GPIO_WritePortPin(LED_4_PORT_DATA, LED_4_PIN, state); // led_port, led_pin
//     //     break;
//     default:
//         /* Should not come here */
//         break;
//     }

//     /* End of your code */
// }

// tLED_State LED_GetState(tLED led)
// {
//     tLED_State ret;

//     /* Add your code here! */
//     /* Set led state */
//     switch (led)
//     {
//     case LED_0:
//         ret = GPIO_ReadPortPin(LED_0_PORT_DATA, LED_0_PIN); // led_port, led_pin
//         break;
//     // case LED_1:
//     //     ret = GPIO_ReadPortPin(LED_1_PORT_DATA, LED_1_PIN); // led_port, led_pin
//     //     break;
//     // case LED_2:
//     //     ret = GPIO_ReadPortPin(LED_2_PORT_DATA, LED_2_PIN); // led_port, led_pin
//     //     break;
//     // case LED_3:
//     //     ret = GPIO_ReadPortPin(LED_3_PORT_DATA, LED_3_PIN); // led_port, led_pin
//     //     break;
//     // case LED_4:
//     //     ret = GPIO_ReadPortPin(LED_4_PORT_DATA, LED_4_PIN); // led_port, led_pin
//     //     break;
//     default:
//         /* Should not come here */
//         break;
//     }

//     /* End of your code */
//     return ret;
// }
