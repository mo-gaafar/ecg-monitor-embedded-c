#include "main.h"
#include "Port.h"
#include "Buzzer.h"
#include "pwm.h"

#define NUMBER_OF_BUZZERS (1)
#define NUMBER_OF_MODES (4)
#define STATE_SEQUENCE_LENGTH (5)

#define BUZ_MAX_VOLTAGE (1)
#define BUZ_MIN_VOLTAGE (0)

#define BUZ_Update_Period_ms (ISR_TMR0_Period_ms)
#define BUZ_State_Update_Period_ms (1000)

u16 buzzer_update_ms = 0;

u8 current_state_index = 0;

typedef struct tBUZ_Info
{
    tBUZ_State state_sequence[STATE_SEQUENCE_LENGTH];
    tBUZ_Mode mode;
    u8 volume;

} tBUZ_Info;

static tBUZ_Info buzzer_info[NUMBER_OF_BUZZERS];

const tBUZ_State BUZ_PATTERN[NUMBER_OF_MODES][STATE_SEQUENCE_LENGTH] = {
    {BUZ_OFF, BUZ_OFF, BUZ_OFF, BUZ_OFF, BUZ_OFF}, // BUZ_STOPPED_MODE
    {BUZ_ON, BUZ_OFF, BUZ_OFF, BUZ_OFF, BUZ_OFF},  // BUZ_SINGLE_MODE
    {BUZ_OFF, BUZ_ON, BUZ_OFF, BUZ_OFF, BUZ_OFF},  // BUZ_PATTERN_MODE
    {BUZ_OFF, BUZ_OFF, BUZ_ON, BUZ_OFF, BUZ_OFF},  // BUZ_TOGGLE_MODE

};

void BUZ_Init(tBUZ buzzer, tBUZ_Mode mode)
{
    /* Initialize hw pin data direction */
    switch (buzzer)
    {
    case BUZ_ALARM:
        GPIO_InitPortPin(BUZ_ALARM_PORT_DIRECTION, BUZ_ALARM_PIN, GPIO_OUT); // port, pin, direction
        break;
    default:
        /* Should not be here */
        break;
    }

    /* Initialize mode */
    BUZ_SetState(buzzer, BUZ_OFF);
    BUZ_SetMode(buzzer, mode);
}

void BUZ_Update(void)
{
    if (buzzer_update_ms >= BUZ_State_Update_Period_ms)
    {
        buzzer_update_ms = 0;

        tBUZ current_buzzer = BUZ_ALARM;
        tBUZ_State current_state = BUZ_OFF;

        /* Update state for all buzzers */
        for (; current_buzzer < NUMBER_OF_BUZZERS; current_buzzer++)
        {
            // Retrieve state from sequence
            current_state = buzzer_info[current_buzzer].state_sequence[current_state_index];
            // Set pin state
            BUZ_SetState(current_buzzer, current_state);
        }

        current_state_index++;
        // Reset Counter
        current_state_index = (current_state_index == STATE_SEQUENCE_LENGTH) ? 0 : current_state_index;
    }
    else
    {
        buzzer_update_ms += BUZ_Update_Period_ms;
    }
}

void BUZ_SetState(tBUZ buzzer, tBUZ_State state)
{
    /* Set buzzer state */
    switch (buzzer)
    {
    case BUZ_ALARM:
        if (state == BUZ_OFF)
        {
            PWM_Pause(BUZ_ALARM_TIMER);
        }
        else
        {
            PWM_Resume(BUZ_ALARM_TIMER);
            PWM_Set_Duty(BUZ_ALARM_TIMER, buzzer_info[BUZ_ALARM].volume);
        }

        // GPIO_WritePortPin(BUZ_ALARM_PORT_DATA, BUZ_ALARM_PIN, state); // port, pin
        break;
    default:
        /* Should not be here */
        break;
    }
    /* End of your code */
}
void BUZ_SetMode(tBUZ buzzer, tBUZ_Mode mode)
{
    if (buzzer_info[buzzer].mode == mode) // Exit if mode is already set
    {
        return;
    }

    /* Set buzzer mode */
    switch (buzzer)
    {
    case BUZ_ALARM:
        buzzer_info[BUZ_ALARM].mode = mode;
        break;
    default:
        /* Should not be here */
        break;
    }

    /* Set buzzer state sequence */
    for (u8 i = 0; i < STATE_SEQUENCE_LENGTH; i++)
    {
        buzzer_info[buzzer].state_sequence[i] = BUZ_PATTERN[buzzer_info[buzzer].mode][i];
    }
};
void BUZ_SetVolume(tBUZ buzzer, u8 volume)
{
    /* Set buzzer volume */
    for (u8 current_buz = 0; current_buz < NUMBER_OF_BUZZERS; current_buz++)
    {
        if (current_buz == buzzer)
        {
            if (volume <= 100 && volume >= 0)
            {
                buzzer_info[current_buz].volume = volume;
            }
            else if (volume > 100)
            {
                buzzer_info[current_buz].volume = 100;
            }
            else
            {
                buzzer_info[current_buz].volume = 0;
            }
            buzzer_info[current_buz].volume = volume;
        }
    }
}
u8 BUZ_GetVolume(tBUZ buzzer)
{
    /* Get buzzer volume */
    return buzzer_info[buzzer].volume;
}
void BUZ_VolumeUp(tBUZ buzzer, u8 increments)
{
    for (u8 i = 0; i < increments; i++)
    {
        /* Increase buzzer volume */
        switch (buzzer)
        {
        case BUZ_ALARM:
            BUZ_SetVolume(buzzer, BUZ_GetVolume(buzzer) + 1);
            break;
        default:
            /* Should not be here */
            break;
        }
    }
}
void BUZ_VolumeDn(tBUZ buzzer, u8 decrements)
{
    for (u8 i = 0; i < decrements; i++)
    {
        /* Decrease buzzer volume */
        switch (buzzer)
        {
        case BUZ_ALARM:
            BUZ_SetVolume(buzzer, BUZ_GetVolume(buzzer) - 1);
            break;
        default:
            /* Should not be here */
            break;
        }
    }
}

// tBUZ_State BUZ_GetState(tBUZ buzzer) // TODO: Add safety check?
// {
//     /* Get buzzer state */
//     tBUZ_State state = BUZ_OFF;
//     switch (buzzer)
//     {
//     case BUZ_ALARM:
//         state = buzzer_info[buzzer].; // port, pin
//         break;
//     default:
//         /* Should not be here */
//         break;
//     }
//     /* End of your code */
//     return state;
// }
tBUZ_Mode BUZ_GetMode(tBUZ buzzer)
{
    /* Get buzzer mode */
    tBUZ_Mode mode = BUZ_STOPPED_MODE;
    switch (buzzer)
    {
    case BUZ_ALARM:
        mode = buzzer_info[BUZ_ALARM].mode;
        break;
    default:
        /* Should not be here */
        break;
    }
    return mode;
}
/* End of your code */