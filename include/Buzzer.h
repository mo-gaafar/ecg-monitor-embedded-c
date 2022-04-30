#ifndef __BUZZER_H__
#define __BUZZER_H__

#define BUZ_DELAY_MS (1000)

typedef enum tBUZ_Name
{
    BUZ_ALARM,
} tBUZ;

typedef enum tBUZ_State
{
    BUZ_OFF = 0,
    BUZ_ON = 1
} tBUZ_State;

typedef enum tBUZ_Mode
{
    BUZ_STOPPED_MODE,
    BUZ_SINGLE_MODE,
    BUZ_PATTERN_MODE,
    BUZ_TOGGLE_MODE

} tBUZ_Mode;

void BUZ_Init(tBUZ buzzer, tBUZ_Mode mode);
void BUZ_Update(void);
void BUZ_SetState(tBUZ buzzer, tBUZ_State state);
void BUZ_SetMode(tBUZ buzzer, tBUZ_Mode mode);
tBUZ_State BUZ_GetState(tBUZ buzzer);
tBUZ_Mode BUZ_GetMode(tBUZ buzzer);

#endif // __BUZZER_H__
