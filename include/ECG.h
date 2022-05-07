#ifndef _ECG_H_
#define _ECG_H_

/**
 * @file ECG.h
 * @author Mohamed Nasser
 * @brief ECG Signal Processing and feature extraction module
 * @version 0.0.1
 * @date 2022-05-05
 *
 * @warning TODO: THIS MODULE IS TO BE DOCUMENTED WHEN FINISHED
 */

#include <main.h>

typedef enum
{
    Normal,
    Tachycardia,
    Bradycardia,
    Irregular_Heartbeat
} ECG_Arrythmia_Type;

typedef struct
{
    float *NN_intervals_Array = nullptr;
    float SDNN = 0;  // Standard deviation of NN intervals
    float RMSSD = 0; // Root mean square of successive differences
    float pNN50 = 0; // Percentage of NN intervals greater than 50 ms
    float SDSD = 0;  // Standard deviation of successive differences
} ECG_Statistics;

static u8 current_bpm = 0; // Current heart rate in beats per minute
static ECG_Arrythmia_Type current_arrythmia = Normal;
static ECG_Statistics current_statistics;

void ECG_Init(void);

void ECG_Update(void);
void ECG_UpdateArrythmia(void);

ECG_Arrythmia_Type ECG_GetArrythmia(void);
u8 ECG_GetHR(void);
ECG_Statistics ECG_GetStatistics(void);

#endif
