#ifndef __BUZZER_H__
#define __BUZZER_H__

/**
 * @file       Buzzer
 * @author     Mohamed Nasser
 *
 * @brief      Buzzer driver module
 *
 * @version    0.8.0
 * @date       2022-5-04
 */

#define BUZ_DELAY_MS (1000)

typedef enum tBUZ_Name
{
    BUZ_ALARM,
} tBUZ;

// Cotains the states of the buzzer pin
typedef enum tBUZ_State
{
    BUZ_OFF = 0,
    BUZ_ON = 1
} tBUZ_State;

// Contains the sound pattern modes
typedef enum tBUZ_Mode
{
    BUZ_STOPPED_MODE,
    BUZ_SINGLE_MODE,
    BUZ_PATTERN_MODE,
    BUZ_TOGGLE_MODE

} tBUZ_Mode;

/**
 * @brief Initializes buzzer HW pins and buzzer mode (sound pattern)
 * @param tBUZ buz - The buzzer to initialize.
 * @param tBUZ_Mode mode - The initial sound mode of the buzzer.
 * @return void
 * @note This function is called in the main.c file
 **/
void BUZ_Init(tBUZ buzzer, tBUZ_Mode mode);

/**
 * @brief Updates buzzer states based on their selected sound pattern
 * @param void
 * @return void
 * @note This function is called in the main.c file
 **/
void BUZ_Update(void);

/**
 * @brief Sets the output state of one buzzer.
 * @param tBUZ buzzer - The buzzer to set state of.
 * @param tBUZ_State state - The state to set the buzzer to.
 * @return void
 **/
void BUZ_SetState(tBUZ buzzer, tBUZ_State state);

/**
 * @brief Sets the sound mode of the buzzer.
 * @param tBUZ buzzer - The buzzer to set mode of.
 * @param tBUZ_Mode mode - The sound mode to set the buzzer to.
 * @return void
 **/
void BUZ_SetMode(tBUZ buzzer, tBUZ_Mode mode);

/**
 * @brief Gets the current state of one buzzer.
 * @param tBUZ buzzer - The buzzer to get state of.
 * @return tBUZ_State - The current state of the buzzer.
 **/
tBUZ_State BUZ_GetState(tBUZ buzzer);

/**
 * @brief Gets the current sound mode of one buzzer.
 * @param tBUZ buzzer - The buzzer to get mode of.
 * @return tBUZ_Mode - The current sound mode of the buzzer.
 **/
tBUZ_Mode BUZ_GetMode(tBUZ buzzer);

// TODO: Implement these functions then add documentation

/**
 * @brief Generates PWM signal at the buzzer pin.
 * @param tBUZ buzzer - The buzzer to generate PWM signal for.
 * @param u8 duty_cycle - The duty cycle of the PWM signal.
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 **/
void BUZ_GeneratePWM(tBUZ buzzer, u8 duty_cycle);

/**
 * @brief Sets the buzzer's volume level
 *
 * @param buzzer - The buzzer to set volume for.
 * @param volume - The volume level to set the buzzer to.
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 */
void BUZ_SetVolume(tBUZ buzzer, u8 volume);

/**
 * @brief Increment the buzzer's volume level
 *
 * @param buzzer - The buzzer to increment volume for.
 * @return void
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 **/
void BUZ_VolumeUp(tBUZ buzzer);

/**
 * @brief Decrement the buzzer's volume level
 *
 * @param buzzer - The buzzer to decrement volume for.
 * @return void
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 **/
void BUZ_VolumeDn(tBUZ buzzer);

/**
 * @brief Sets the volume to zero
 *
 * @param buzzer - The buzzer to set volume to zero for.
 * @return void
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 **/
void BUZ_Mute(tBUZ buzzer);

/**
 * @brief Sets the volume back to previous level
 *
 * @param buzzer - The buzzer to set volume back to previous level for.
 * @return void
 * @warning THIS FUNCTION IS NOT YET IMPLEMENTED
 **/
void BUZ_Unmute(tBUZ buzzer);

#endif // __BUZZER_H__
