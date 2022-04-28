
#include "Push_Button.h"
#include "Port.h"

#define NUMBER_OF_SAMPLE (6)       // fill this line
#define NUMBER_OF_PUSH_BUTTONS (4) // fill this line

#define PB_PRESSED_VOLTAGE (0)
#define PB_RELEASED_VOLTAGE (1)

u8 current_sample_index = 0;

typedef struct PB_Info
{
    unsigned char samples[NUMBER_OF_SAMPLE];
    tPB_State state;
} tPB_Info;

static tPB_Info pb_info[NUMBER_OF_PUSH_BUTTONS];

void PB_Init(tPB pb, tPB_State initial_state)
{
    /* Initialize hw pins */
    switch (pb)
    {
    case PB_VOL_PLUS:
        GPIO_InitPortPin(PB_VOL_MINUS_PORT_DIRECTION, PB_VOL_MINUS_PIN, GPIO_IN); // port, pin, direction
        break;
    case PB_VOL_MINUS:
        GPIO_InitPortPin(PB_VOL_MINUS_PORT_DIRECTION, PB_VOL_MINUS_PIN, GPIO_IN); // port, pin, direction
        break;
    case PB_SNOOZE:
        GPIO_InitPortPin(PB_SNOOZE_PORT_DIRECTION, PB_SNOOZE_PIN, GPIO_IN); // port, pin, direction
        break;
    case PB_DISP_SLEEP:
        GPIO_InitPortPin(PB_DISP_SLEEP_PORT_DIRECTION, PB_DISP_SLEEP_PIN, GPIO_IN); // port, pin, direction
        break;
    default:
        /* Should not be here */
        break;
    }

    /* Initialize state */
    pb_info[pb].state = PB_RELEASED_VOLTAGE; // fill this line

    /* Initialize samples */
    switch (initial_state)
    {
    case PB_RELEASED:
    case PB_PRE_RELEASED:
        pb_info[pb].samples[0] = PB_RELEASED_VOLTAGE; // fill this line
        pb_info[pb].samples[1] = PB_RELEASED_VOLTAGE; // fill this line
        break;
    case PB_PRESSED:
    case PB_PRE_PRESSED:
        pb_info[pb].samples[0] = PB_PRESSED_VOLTAGE; // fill this line
        pb_info[pb].samples[1] = PB_PRESSED_VOLTAGE; // fill this line
        break;
    }
}

void PB_Update(void)
{
    tPB current_button = PB_VOL_PLUS;
    for (current_button = PB_VOL_PLUS; current_button <= PB_DISP_SLEEP; current_button++)
    {
        /* Update samples */
        // pb_info[current_button].samples[0] = ***; // fill this line

        switch (current_button)
        {
        case PB_VOL_PLUS:
            pb_info[current_button].samples[1] = GPIO_ReadPortPin(PB_VOL_PLUS_PORT_DATA, PB_VOL_PLUS_PIN); // fill this line
            break;
        case PB_VOL_MINUS:
            pb_info[current_button].samples[1] = GPIO_ReadPortPin(PB_VOL_MINUS_PORT_DATA, PB_VOL_MINUS_PIN); // fill this line
            break;
        case PB_SNOOZE:
            pb_info[current_button].samples[1] = GPIO_ReadPortPin(PB_SNOOZE_PORT_DATA, PB_SNOOZE_PIN); // fill this line
            break;
        case PB_DISP_SLEEP:
            pb_info[current_button].samples[1] = GPIO_ReadPortPin(PB_DISP_SLEEP_PORT_DATA, PB_DISP_SLEEP_PIN); // fill this line
            break;
        default:
            /* Should not be here */
            break;
        }

        /* Update state */
        switch (pb_info[current_button].state)
        {
        case PB_RELEASED:
            if ((pb_info[current_button].samples[0] == PB_PRESSED_VOLTAGE) && // fill this line
                (pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE))   // fill this line
            {
                pb_info[current_button].state = PB_PRE_PRESSED; // fill this line
            }
            break;
        case PB_PRE_PRESSED:
            if (pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE) // fill this line
            {
                pb_info[current_button].state = PB_PRESSED; // fill this line
            }
            break;
        case PB_PRESSED:
            if ((pb_info[current_button].samples[0] == PB_RELEASED_VOLTAGE) && // fill this line
                (pb_info[current_button].samples[1] == PB_RELEASED_VOLTAGE))   // fill this line
            {
                pb_info[current_button].state = PB_PRE_RELEASED; // fill this line
            }
            break;
        case PB_PRE_RELEASED:
            if (pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE) // fill this line
            {
                pb_info[current_button].state = PB_RELEASED; // fill this line
            }
            break;
            break;
        default:
            /* Should not be here */
            break;
        }
    }
}

tPB_State PB_GetState(tPB pb)
{
    tPB_State ret = PB_RELEASED;

    ret = pb_info[pb].state;

    return ret;
}
