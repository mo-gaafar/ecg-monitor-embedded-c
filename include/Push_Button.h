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

void PB_Init(tPB pb, tPB_State initial_state);
void PB_Update(void);
tPB_State PB_GetState(tPB pb);

#endif // __PB_H__
