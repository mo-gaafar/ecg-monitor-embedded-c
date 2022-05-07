#ifndef _FIRFILTER_H_
#define _FIRFILTER_H_

/**
 * @file FIRFilter.h
 * @author Mohamed Nasser
 * @brief This is a FIR filtering operation module
 * @version 0.1
 * @date 2022-05-07
 * @warning This is to be documented when finished
 */

#include <stdint.h>
#include <main.h>

#define FIR_FILTER_LENGTH 16

typedef struct
{
    float buf[FIR_FILTER_LENGTH];
    u8 bufIndex;

    float out;
} FIRFilter;

void FIRFilter_Init(FIRFilter *fir);
float FIRFilter_Update(FIRFilter *fir, float in);

#endif // _FIRFILTER_H_