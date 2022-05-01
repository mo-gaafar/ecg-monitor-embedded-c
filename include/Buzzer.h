#ifndef __BUZZER_H__
#define __BUZZER_H__

#define BUZ_DELAY_MS (1000)

// Contains the names of supported buzzers
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

/*
 * Function: BUZ_Init
 * ----------------------------
 *  Initializes buzzer HW pins and buzzer mode (sound pattern)
 *
 *
 *  Parameters:
 *      tBUZ buz - The buzzer to initialize.
 *      tBUZ_Mode mode - The initial sound mode of the buzzer.
 *
 *  Returns:
 *      void
 */
void BUZ_Init(tBUZ buzzer, tBUZ_Mode mode);

/*
 * Function: BUZ_Update
 * ----------------------------
 *  Updates buzzer states based on their selected sound pattern
 *
 *
 *  Parameters:
 *      void
 *
 *  Returns:
 *      void
 */
void BUZ_Update(void);

/*
 * Function: BUZ_SetState
 * ----------------------------
 *  Sets the output state of one buzzer.
 *
 *
 * Parameters:
 *  tBUZ buzzer - The buzzer to set state of.
 *  tBUZ_State state - The state to set the buzzer to.
 *
 *  Returns:
 *      void
 */
void BUZ_SetState(tBUZ buzzer, tBUZ_State state);

/*
 * Function: BUZ_SetMode
 * ----------------------------
 *  Sets the sound mode of the buzzer.
 *
 *
 *  Parameters:
 *      tBUZ buz - The buzzer to set mode of.
 *      tBUZ_Mode mode - The sound mode to set the buzzer to.
 *
 *  Returns:
 *      void
 */
void BUZ_SetMode(tBUZ buzzer, tBUZ_Mode mode);

/*
 * Function: BUZ_GetState
 * ----------------------------
 *  Gets the current state of one buzzer.
 *
 *
 *  Parameters:
 *      tBUZ buzzer - The buzzer to get state of.
 *
 *  Returns:
 *     tBUZ_State - The current state of the buzzer.
 */
tBUZ_State BUZ_GetState(tBUZ buzzer);

/*
 * Function: BUZ_GetMode
 * ----------------------------
 *  Gets the current sound mode of one buzzer.
 *
 *
 *  Parameters:
 *      tBUZ buzzer - The buzzer to get mode of.
 *
 *  Returns:
 *      tBUZ_Mode - The current sound mode of the buzzer.
 */
tBUZ_Mode BUZ_GetMode(tBUZ buzzer);

// TODO: Implement these functions then add documentation

void BUZ_GeneratePWM(tBUZ buzzer, u8 duty_cycle);
void BUZ_SetVolume(tBUZ buzzer, u8 volume);
void BUZ_VolumeUp(tBUZ buzzer);
void BUZ_VolumeDn(tBUZ buzzer);
void BUZ_Mute(tBUZ buzzer);
void BUZ_Unmute(tBUZ buzzer);

#endif // __BUZZER_H__
