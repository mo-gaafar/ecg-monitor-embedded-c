#ifndef _PWM_H_
#define _PWM_H_

#include "main.h"
#include "Port.h"
#include <avr/io.h>
#include <util/delay.h>

#define PWM0_PORT_DATA (BUZ_ALARM_PORT_DATA)
#define PWM0_PORT_DIRECTION (BUZ_ALARM_PORT_DIRECTION)
#define PWM0_PIN (BUZ_ALARM_PIN)

#define PWM2_PORT_DATA
#define PWM2_PORT_DIRECTION
#define PWM2_PIN

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

struct tPWM_CONFIG
{
    tPWM_MODE mode;
    u8 duty;
    u8 prescaler;
};

tPWM_CONFIG pwm_config[2];

void PWM_Init(tPWM pwm, tPWM_MODE init_mode, u8 init_duty);
void PWM_Set_Duty(tPWM pwm, u8 duty);
u8 PWM_Get_Duty(tPWM pwm);
void PWM_Start(tPWM pwm);
void PWM_Stop(tPWM pwm);

#endif
