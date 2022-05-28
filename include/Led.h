#ifndef __LED_H__
#define __LED_H__

/**
 * @file Led.h
 * @author Mohamed Nasser
 * @brief This is a LED driver module
 * @version 1.0
 * @date 2022-4-28
 **/

#define LED_DELAY_MS (1000)

/**
 * @brief Contains supported LED names
 *
 */
typedef enum LED_Name
{
    LED_ALARM,
    LED_PROCESSING,
    LED_2,
    LED_3,
    LED_4
} tLED;

/**
 * @brief LED Output pin state
 *
 */
typedef enum LED_State
{
    LED_OFF = 0,
    LED_ON = 1
} tLED_State;

/**
 * @brief Initializes the LED with its initial state and sets HW pin direction.
 * @param led The LED to initialize.
 * @param state The initial state of the LED.
 * @return void
 * @see tLED
 * @see tLED_State
 **/
void LED_Init(tLED led, tLED_State state);

/**
 * @brief Sets the state of one LED.
 * @param led The LED to set state of.
 * @param state The state to set the LED to.
 * @return void
 * @see tLED
 * @see tLED_State
 **/
void LED_SetState(tLED led, tLED_State state);

/**
 * @brief Toggles the state of one LED.
 * @param led The LED to toggle state of.
 * @return void
 * @see tLED
 **/
void LED_Toggle(tLED led);

/**
 * @brief Gets the state of one LED.
 * @param led The LED to get state of.
 * @return tLED_State The state of the LED.
 * @see tLED
 * @see tLED_State
 **/
tLED_State LED_GetState(tLED led);

/**
 * @brief Turn selected LED on
 *
 * @param led selected LED
 */
void LED_On(tLED led);

/**
 * @brief Turn selected LED off
 *
 * @param led selected LED
 */
void LED_Off(tLED led);

#endif // __LED_H__
