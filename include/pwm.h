#ifndef _PWM_H_
#define _PWM_H_

#include "main.h"
#include "Port.h"
#include <avr/io.h>
#include <util/delay.h>

#define PWM0_PORT_DATA (BUZ_ALARM_PORT_DATA)
#define PWM0_PORT_DIRECTION (BUZ_ALARM_PORT_DIRECTION)
#define PWM0_PIN (BUZ_ALARM_PIN)

#define PWM2_PORT_DATA (BUZ_ALARM_PORT_DATA)
#define PWM2_PORT_DIRECTION (BUZ_ALARM_PORT_DIRECTION)
#define PWM2_PIN (BUZ_ALARM_PIN)

// TODO: account for already used timer peripherals

typedef enum
{
    PWM_0,
    PWM_2
} tPWM;

typedef enum
{
    PWM_MODE_STOPPED,
    PWM_MODE_RUNNING
    // PWM_MODE_PHASE_CORRECTED
} tPWM_MODE;

void PWM_Init(tPWM pwm, tPWM_MODE init_mode, u8 init_duty, u8 init_prescaler);
void PWM_Set_Duty(tPWM pwm, u8 duty);
void PWM_Set_Clock(tPWM pwm, u8 clock);
u8 PWM_Get_Duty(tPWM pwm);
void PWM_Start(tPWM pwm);
void PWM_Resume(tPWM pwm);
void PWM_Pause(tPWM pwm);

#endif
