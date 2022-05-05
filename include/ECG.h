#ifndef _ECG_H_
#define _ECG_H_

#include <main.h>

typedef enum
{
    Normal,
    Tachycardia,
    Bradycardia,
    Irregular_Heartbeat
} ECG_Arrythmia_Type;



static u8 current_hr = 0;
static ECG_Arrythmia_Type current_arrythmia = Normal;

void ECG_Init(void);
void ECG_UpdateHR(void);

ECG_Arrythmia_Type ECG_GetArrythmia(void);
u8 ECG_GetHR(void);

#endif
