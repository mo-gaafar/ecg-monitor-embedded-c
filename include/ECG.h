#ifndef _ECG_H_
#define _ECG_H_

/**
 * @file ECG.h
 * @author Mohamed Nasser
 * @brief ECG Signal Processing and feature extraction module
 * @version 0.9.1
 * @date 2022-05-24
 *
 **/

#include <main.h>

#define true 1
#define false 0
#define M 5
#define N 30
#define winSize 250
#define HP_CONSTANT ((float)1 / (float)M)
#define MAX_BPM 100

#define ECG_DEBUG 1
#define ECG_Sample_Period_ms (ISR_TMR0_Period_ms)

// pre-recorded ECG, for testing
int s_ecg_idx;
#define S_ECG_SIZE 226
// const float s_ecg[S_ECG_SIZE];
u16 ecg_found_ticks_ms;
u16 ecg_old_found_ticks_ms;
volatile u16 bpm;

// resolution of RNG
#define RAND_RES 100000000

// circular buffer for input ecg signal
// we need to keep a history of M + 1 samples for HP filter
float ecg_buff[M + 1];
int ecg_buff_WR_idx;
int ecg_buff_RD_idx;

// circular buffer for input ecg signal
// we need to keep a history of N+1 samples for LP filter
float hp_buff[N + 1];
int hp_buff_WR_idx;
int hp_buff_RD_idx;

// LP filter outputs a single point for every input point
// This goes straight to adaptive filtering for eval
float next_eval_pt;

// running sums for HP and LP filters, values shifted in FILO
float hp_sum;
float lp_sum;

// parameters for adaptive thresholding
double treshold;
u8 triggered;
int trig_time;
float win_max;
int win_idx;

int tmp;

u16 number_iter;

/**
 * @brief Cointains supported arrythmia types
 *
 **/
typedef enum
{
    Normal,
    Tachycardia,
    Bradycardia,
    Irregular_Heartbeat
} ECG_Arrythmia_Type;

// typedef struct
// {
//     float *NN_intervals_Array = nullptr;
//     float SDNN = 0;  // Standard deviation of NN intervals
//     float RMSSD = 0; // Root mean square of successive differences
//     float pNN50 = 0; // Percentage of NN intervals greater than 50 ms
//     float SDSD = 0;  // Standard deviation of successive differences
// } ECG_Statistics;

/**
 * @brief Initialize ECG Drivers
 *
 **/
void ECG_Init();

/**
 * @brief Update ECG filtering, detection
 *
 **/
void ECG_Update(void); // update ecg signal, update counter, detect peaks, calculate heart rate

/**
 * @brief Calculates BPM from ms tick counters
 *
 * @return u8 Beats per minute
 **/
u8 ECG_Get_BPM(void);

/**
 * @brief Uses BPM to calculate arrythmia type based on ECG_Arrythmia_Type enum
 *
 * @return ECG_Arrythmia_Type
 **/
ECG_Arrythmia_Type ECG_Get_Arrythmia_Type(void);

/**
 * @brief Converts tECG_Arrythmia_Type to char array for LCD
 *
 * @return char* String
 **/
char *ECG_Get_Arrythmia_Type_String(void);

/**
 * @brief Performs filtering and adaptive threshold operations to detect R waves
 *
 * @param ecg_sample Input sample
 * @return u8 boolean value (1 = detected)
 **/
u8 ECG_Detect(float ecg_sample);

// static u8 current_bpm = 0; // Current heart rate in beats per minute
// static ECG_Arrythmia_Type current_arrythmia = Normal;
// static ECG_Statistics current_statistics;

// ECG_Statistics ECG_GetStatistics(void);

#endif
