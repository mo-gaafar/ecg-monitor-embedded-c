#ifndef __PB_H__
#define __PB_H__

#include <main.h>

/**
 * @file Push_Button.h
 * @author Mohamed Nasser
 * @brief This is a Push Button driver module
 * @version 1.0
 * @date 2022-4-30
 **/

// TODO:
typedef enum PB_Name
{
    PB_VOL_PLUS,
    PB_VOL_MINUS,
    PB_SNOOZE,
    PB_DISP_SLEEP

} tPB;

// TODO:
typedef enum PB_State
{
    PB_RELEASED,
    PB_PRE_PRESSED,
    PB_PRESSED,
    PB_PRE_RELEASED
} tPB_State;

/**
 * @brief Initializes the Push Button with its initial state and sets HW pin direction.
 * @param pb The Push Button to initialize.
 * @param state The initial state of the Push Button.
 * @return void
 * @see tPB
 * @see tPB_State
 **/
void PB_Init(tPB pb, tPB_State initial_state);

/**
 * @brief Updates the state and samples of all pushbuttons.
 * @param void
 * @return void
 **/
void PB_Update(void);

// TODO:
u16 PB_GetClicks(tPB pb);

void PB_ResetClicks(tPB pb);

/**
 * @brief Gets the current state of one pushbutton.
 * @param tPB pb - pushbutton to get state of
 * @return tPB_State - The current state of the Push Button.
 * @see tPB
 * @see tPB_State
 **/
tPB_State PB_GetState(tPB pb);

#endif // __PB_H__
