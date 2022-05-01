#ifndef __LED_H__
#define __LED_H__

#define LED_DELAY_MS (1000)

typedef enum LED_Name
{
    LED_ALARM,
    LED_PROCESSING,
    LED_2,
    LED_3,
    LED_4
} tLED;

typedef enum LED_State
{
    LED_OFF = 0,
    LED_ON = 1
} tLED_State;

/*
 * Function: LED_Init
 * ----------------------------
 *   Initializes the LED with its initial state and sets HW pin direction.
 *
 *
 *  Parameters:
 *  tLED led - The LED to initialize.
 *  tLED_State state - The initial state of the LED.
 *
 *  Returns:
 *      void
 */
void LED_Init(tLED led, tLED_State state);

/*
 * Function: LED_SetState
 * ----------------------------
 *   Sets the state of one LED.
 *
 *
 *  Parameters:
 * tLED led - The LED to set state of.
 * tLED_State state - The state to set the LED to.
 *
 *  Returns:
 *      void
 */
void LED_SetState(tLED led, tLED_State state);

/*
 * Function: LED_Toggle
 * ----------------------------
 *   Toggles the state of one LED.
 *
 *
 *  Parameters:
 * tLED led - The LED to toggle state of.
 *
 *  Returns:
 *      void
 */
void LED_Toggle(tLED led);

/*
 * Function: LED_GetState
 * ----------------------------
 *  Gets the current state of one LED.
 *
 *
 *  Parameters:
 *  tLED led - LED to get state of
 *
 *  Returns:
 *  tLED_State - The current state of the LED.
 *
 */
tLED_State LED_GetState(tLED led);

#endif // __LED_H__
