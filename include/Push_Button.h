#ifndef __PB_H__
#define __PB_H__

typedef enum PB_Name
{
    PB_VOL_PLUS,
    PB_VOL_MINUS,
    PB_SNOOZE,
    PB_DISP_SLEEP

} tPB;

typedef enum PB_State
{
    PB_RELEASED,
    PB_PRE_PRESSED,
    PB_PRESSED,
    PB_PRE_RELEASED
} tPB_State;

/*
 * Function: PB_Init
 * ----------------------------
 *   Initializes the Push Button with its initial state and HW pin direction.
 *
 *
 *  Parameters:
 *   tPB pb - The Push Button to initialize.
 *   tPB_State state - The initial state of the Push Button.
 *
 *  Returns:
 *      void
 */
void PB_Init(tPB pb, tPB_State initial_state);

/*
 * Function: PB_Update
 * ----------------------------
 *   Reads the samples of all pushbuttons and updates state accordingly.
 *
 *  Paramters:
 *     void
 *
 *  Returns:
 *     void
 */
void PB_Update(void);

/*
 * Function: PB_GetState
 * ----------------------------
 *  Gets the current state of one pushbutton.
 *
 *  Parameters:
 *  tPB pb - pushbutton to get state of
 *
 *  Returns:
 *  tPB_State - The current state of the Push Button.
 */
tPB_State PB_GetState(tPB pb);

#endif // __PB_H__
