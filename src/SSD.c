#include "SSD.h"
#include "GPIO.h"
#include "Port.h"

#define NUMBER_OF_SSD (4)
// #define SSD_ANODE FALSE

static tSSD_Symbol ssd_symbols[NUMBER_OF_SSD] = {SSD_NULL};

static unsigned char ssd_data[] =
    {
        0b00111111,
        0b00000110,
        0b01011011,
        0b01001111,
        0b01100110,
        0b01101101,
        0b01111101,
        0b00000111,
        0b01111111,
        0b01101111,
        0b00000000};

void SSD_Init(tSSD ssd, tSSD_State initial_state, tSSD_Symbol initial_symbol)
{
    /* Initialize SSD data pins  */
    GPIO_InitPort(SSD_DISPLAY_PORT_DIRECTION, GPIO_OUT);
    GPIO_SetPortState(SSD_DISPLAY_PORT_DATA, ssd_data[SSD_NULL]);

    /* Initialize SSD state pin */
    switch (ssd)
    {
    case SSD_L:
        GPIO_InitPortPin(SSD_EN_PORT_DIRECTION, SSD_STATE_THOUSANDS_PIN, GPIO_OUT); // SSD Port, SSD enable Pin
        break;
    case SSD_M:
        GPIO_InitPortPin(SSD_EN_PORT_DIRECTION, SSD_STATE_HUNDREDS_PIN, GPIO_OUT); // SSD Port, SSD enable Pin
        break;
    case SSD_N:
        GPIO_InitPortPin(SSD_EN_PORT_DIRECTION, SSD_STATE_TENS_PIN, GPIO_OUT); // SSD Port, SSD enable Pin
        break;
    case SSD_R:
        GPIO_InitPortPin(SSD_EN_PORT_DIRECTION, SSD_STATE_ONES_PIN, GPIO_OUT); // SSD Port, SSD enable Pin
        break;
    default:
        /* Should not be here */
        break;
    }

    /* Set initial state */
    SSD_SetState(ssd, initial_state);

    /* Set initial symbol */
    SSD_SetSymbol(ssd, initial_symbol);
}

void SSD_Update(void)
{
    tSSD current_ssd = SSD_L;

    for (current_ssd = SSD_L; current_ssd <= SSD_R; current_ssd++)
    {
        /* Turn off all ssd */
        SSD_SetState(SSD_L, SSD_OFF); // turn off all the SSDs
        SSD_SetState(SSD_M, SSD_OFF); // turn off all the SSDs
        SSD_SetState(SSD_N, SSD_OFF); // turn off all the SSDs
        SSD_SetState(SSD_R, SSD_OFF); // turn off all the SSDs

        /* Set current ssd output */
        GPIO_SetPortState(SSD_DISPLAY_PORT_DATA, ssd_data[ssd_symbols[current_ssd]]); // fill this line
        /* Turn on current ssd */
        SSD_SetState(current_ssd, SSD_ON);

        /* Delay 20ms*/
        _delay_ms(5);
    }
}

void SSD_SetSymbol(tSSD ssd, tSSD_Symbol symbol)
{
    ssd_symbols[ssd] = symbol;
}

void SSD_SetState(tSSD ssd, tSSD_State state)
{
    switch (ssd)
    {
    case SSD_L:
        GPIO_SetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_THOUSANDS_PIN, state);
        break;
    case SSD_M:
        GPIO_SetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_HUNDREDS_PIN, state);
        break;
    case SSD_N:
        GPIO_SetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_TENS_PIN, state);
        break;
    case SSD_R:
        GPIO_SetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_ONES_PIN, state);
        break;
    default:
        /* Should not be here */
        break;
    }
}

tSSD_Symbol SSD_GetSymbol(tSSD ssd)
{
    tSSD_Symbol ret = SSD_NULL;

    ret = ssd_symbols[ssd];

    return ret;
}

tSSD_State SSD_GetState(tSSD ssd)
{
    tSSD_State ret = SSD_OFF;

    switch (ssd)
    {
    case SSD_L:
        ret = GPIO_GetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_THOUSANDS_PIN);
        break;
    case SSD_M:
        ret = GPIO_GetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_HUNDREDS_PIN);
        break;
    case SSD_N:
        ret = GPIO_GetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_TENS_PIN);
        break;
    case SSD_R:
        ret = GPIO_GetPortPinState(SSD_EN_PORT_DATA, SSD_STATE_ONES_PIN);
        break;
    default:
        /* Should not be here */
        break;
    }

    return ret;
}
