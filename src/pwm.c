#include <pwm.h>
#include <main.h>
#include <avr/io.h>

typedef struct tPWM_CONFIG
{
    tPWM_MODE mode;
    u8 duty;
    u8 prescaler;
} tPWM_CONFIG;

static tPWM_CONFIG pwm_config[2];

// Timer 2 Phase correct pwm, main frequency 50hz
void PWM_Init(tPWM pwm, tPWM_MODE init_mode, u8 init_duty, u8 init_clock)
{
    switch (pwm)
    {
    case PWM_0:
        GPIO_InitPortPin(PWM0_PORT_DIRECTION, PWM0_PIN, GPIO_OUT); // User must make sure correct pin is defined in header and port.h
        pwm_config[PWM_0].duty = init_duty;
        pwm_config[PWM_0].mode = init_mode;
        pwm_config[PWM_0].prescaler = init_clock;
        if (init_mode == PWM_MODE_RUNNING)
        {
            PWM_Start(PWM_0);
        }

        // PWM_Set_Duty(PWM_0, init_duty);
        /*
         * Description:
         * 1. WGM01:0 =1 to work with fast PWM mode of TIMER0 of AVR.
         * 2. FOC0 =0 to work with fast PWM mode of TIMER0 of AVR.
         * 3. CS02:00 are set with the entered pre-scaler.
         * 4. COM01:00 are set with required mode of PWM (inverting/non-inverting).
         */

        // /* A simple equation to calculate OCR0 value depending on preferred duty cycle entered. */
        // OCR0A = 255 * ((float)(init_duty) / 100);

        // /* Configure PB3/OC0 as output pin --> pin where the PWM signal is generated from MC. */
        // DDRB = DDRB | (1 << PB3);
        break;
    case PWM_2:
        GPIO_InitPortPin(PWM2_PORT_DIRECTION, PWM2_PIN, GPIO_OUT); // User must make sure correct pin is defined in header and port.h
        pwm_config[PWM_2].duty = init_duty;
        pwm_config[PWM_2].mode = init_mode;
        pwm_config[PWM_2].prescaler = init_clock;
        if (init_mode == PWM_MODE_RUNNING)
        {
            PWM_Start(PWM_2);
        }
        break;
    default:
        break;
    }
}
void PWM_Start(tPWM pwm)
{
    switch (pwm)
    {
    case PWM_0:
        PWM_Set_Duty(PWM_0, pwm_config[PWM_0].duty);
        PWM_Set_Clock(PWM_0, pwm_config[PWM_0].prescaler);
        // PWM_Set_Mode(PWM_0, pwm_config[PWM_0].mode);
        break;

    case PWM_2:
        PWM_Set_Duty(PWM_2, pwm_config[PWM_2].duty);
        PWM_Set_Clock(PWM_2, pwm_config[PWM_2].prescaler);
        // PWM_Set_Mode(PWM_2, pwm_config[PWM_2].mode);
        break;
    }
}

// restores timer clock
void PWM_Resume(tPWM pwm)
{
    switch (pwm)
    {
    case PWM_0:
        // PWM_Start(PWM_0);
        PWM_Set_Clock(PWM_0, pwm_config[PWM_0].prescaler);
        TCCR0A &= ~(1 << COM0A1); // set COM0A1 to 0
        break;
    case PWM_2:
        // PWM_Start(PWM_2);
        PWM_Set_Clock(PWM_2, pwm_config[PWM_2].prescaler);
        TCCR2A &= ~(1 << COM2A1); // set COM2A1 to 0
        break;

    default:
        break;
    }
    // TCCR2B |= 0x0F; // set first 3 bits prescaler = 1024 and WGM22 is set
}
// cuts off the timer's clock
void PWM_Pause(tPWM pwm)
{
    switch (pwm)
    {
    case PWM_0:
        TCCR0A = ~((1 << 0) | (1 << 1) | (1 << 2));
        TCNT0 = 0; /* Reseting TIMER0 register */
    case PWM_2:
        TCCR2A &= ~((1 << 0) | (1 << 1) | (1 << 2)); // clear bits 0:2
        TCNT2 = 0;                                   /* Reseting TIMER2 register */
    }
}

void PWM_Set_Duty(tPWM pwm, u8 duty)
{
    switch (pwm)
    {
    case PWM_0:
        pwm_config[PWM_0].duty = duty;
        // pwm_config[PWM_0].mode = PWM_MODE_RUNNING;
        OCR0A = 255 * ((float)duty / 100);
        TCNT0 = 0;
        break;
    case PWM_2:
        pwm_config[PWM_2].duty = duty;
        // pwm_config[PWM_2].mode = PWM_MODE_RUNNING;
        OCR2A = 255 * ((float)duty / 100);
        break;
    }
}
u8 PWM_Get_Duty(tPWM pwm)
{
    switch (pwm)
    {
    case PWM_0:
        return pwm_config[PWM_0].duty;
    case PWM_2:
        return pwm_config[PWM_2].duty;
    default:
        return 0;
    }
}

void PWM_Set_Clock(tPWM pwm, u8 clock)
{
    switch (pwm)
    {
    case PWM_0:
        TCCR0A = (TCCR0A & 0xF8) | clock;
        break;
    case PWM_2:
        TCCR2A = (TCCR2A & 0xF8) | clock;
        break;
    default:
        break;
    }
}