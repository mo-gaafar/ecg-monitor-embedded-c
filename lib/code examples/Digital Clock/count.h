#ifndef __CNT_H__
#define __CNT_H__

typedef unsigned char HOURS;
typedef unsigned char MINUTS;
typedef unsigned char SECONDS;



void CNT_Init(unsigned char initial_hour,unsigned char initial_minut,unsigned char initial_seconds);
void CNT_Update(void);
void CNT_IncSeconds(void);
void CNT_toggleLed(void);

#endif // __CNT_H__
