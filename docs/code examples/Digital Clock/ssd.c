#include "ssd.h"
#include "utilities.h"

#define NUMBER_OF_SSD   (4)

#define MAX_PERIOD (10)
#define MIN_PERIOD (0)


tSSD_Symbol ssd_symbols[NUMBER_OF_SSD] = {SSD_NULL};

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
    0b00000000
};

static tSSD current_ssd = SSD_L;

static Mode current_mode=NORMAL_MODE;
static tSSD_TOGGLE toggle[]={TOGGLE_OFF,TOGGLE_OFF};
static PERIOD period[]={MIN_PERIOD,MIN_PERIOD};

static tSSD_LED led=LED_OFF;


void SSD_Init(tSSD ssd, tSSD_State initial_state, tSSD_Symbol initial_symbol)
{
    /* Initialize SSD data pins  */
    GPIO_InitPort(GPIO_PORTD_DIRECTION, GPIO_OUT);
    GPIO_WritePort(GPIO_PORTD_DATA, ssd_data[SSD_NULL]);

    /* Initialize SSD state pin */
    switch(ssd)
    {
    case SSD_L:
        GPIO_InitPortPin(SSD_1_PORT_CR, SSD_1_PIN, GPIO_OUT);
        break;
    case SSD_M:
        GPIO_InitPortPin(SSD_2_PORT_CR, SSD_2_PIN, GPIO_OUT);
        break;
    case SSD_N:
        GPIO_InitPortPin(SSD_3_PORT_CR, SSD_3_PIN, GPIO_OUT);
        break;
    case SSD_R:
        GPIO_InitPortPin(SSD_4_PORT_CR, SSD_4_PIN, GPIO_OUT);
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
    unsigned char data;

    /* Turn off all ssd */
    SSD_SetState(SSD_L, SSD_OFF);
    SSD_SetState(SSD_M, SSD_OFF);
    SSD_SetState(SSD_N, SSD_OFF);
    SSD_SetState(SSD_R, SSD_OFF);

    /* Set current ssd output */
    /*SSD data*/
    data=ssd_data[ssd_symbols[current_ssd]];
    if(current_ssd==SSD_R && led==LED_ON){
            data+=0b10000000;
    }
    GPIO_WritePort(GPIO_PORTD_DATA, data);

    /* Turn on current ssd according to current mode */
    switch(current_mode){
        case NORMAL_MODE:
            /* just turn on current ssd */
            SSD_SetState(current_ssd, SSD_ON);
            break;
        case SET_HOURS_MODE:
            /* turn on current ssd except first two toggle it every 20 times */
             SSD_DisplayToggle(SSD_L,SSD_M);
            break;
        case SET_MINUTES_MODE:
            /* turn on current ssd except second two toggle it every 20 times */
            SSD_DisplayToggle(SSD_N,SSD_R);
            break;
        default:
            break;
        }


    if(current_ssd == SSD_R)
    {
      current_ssd  = SSD_L;

    } else
    {
       current_ssd++;
    }
}

tSSD SSD_getCurrentSSD(){
   return current_ssd;
}


void SSD_SetMode(Mode mode){

    current_mode=mode;

}

void SSD_SetSymbol(tSSD ssd, tSSD_Symbol symbol)
{
    ssd_symbols[ssd] = symbol;
}

void SSD_SetLed(tSSD_LED l){
    led=l;
}

void SSD_SetState(tSSD ssd, tSSD_State state)
{
    switch(ssd)
    {
    case SSD_L:
        GPIO_WritePortPin(GPIO_PORTB_DATA, SSD_1_PIN, state);
        break;
    case SSD_M:
        GPIO_WritePortPin(GPIO_PORTB_DATA, SSD_2_PIN, state);
        break;
    case SSD_N:
        GPIO_WritePortPin(GPIO_PORTB_DATA, SSD_3_PIN, state);
        break;
    case SSD_R:
        GPIO_WritePortPin(GPIO_PORTB_DATA, SSD_4_PIN, state);
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

    switch(ssd)
    {
    case SSD_L:
        ret = GPIO_ReadPortPin(GPIO_PORTB_DATA, SSD_1_PIN);
        break;
    case SSD_M:
        ret = GPIO_ReadPortPin(GPIO_PORTB_DATA, SSD_2_PIN);
        break;
    case SSD_N:
        ret = GPIO_ReadPortPin(GPIO_PORTB_DATA, SSD_3_PIN);
        break;
    case SSD_R:
        ret = GPIO_ReadPortPin(GPIO_PORTB_DATA, SSD_4_PIN);
        break;
    default:
        /* Should not be here */
        break;
    }

    return ret;
}

void SSD_DisplayToggle(tSSD firstSSD,tSSD secondSSD){

     if(current_ssd==firstSSD  && toggle[0]==TOGGLE_OFF){
        if(period[0]<MAX_PERIOD){
             period[0]++;
        }
        else{
             period[0]=MIN_PERIOD;
             toggle[0]=TOGGLE_ON;
         }
     }else if(current_ssd==firstSSD && toggle[0]==TOGGLE_ON){
         SSD_SetState(current_ssd, SSD_ON);
         if(period[0]<MAX_PERIOD){
             period[0]++;
         }
         else{
             period[0]=MIN_PERIOD;
             toggle[0]=TOGGLE_OFF;
         }
     }else if(current_ssd==secondSSD  && toggle[1]==TOGGLE_OFF){
         if(period[1]<MAX_PERIOD){
             period[1]++;
         }
         else{
             period[1]=MIN_PERIOD;
             toggle[1]=TOGGLE_ON;
         }
     }else if(current_ssd==secondSSD  && toggle[1]==TOGGLE_ON){
         SSD_SetState(current_ssd, SSD_ON);
         if(period[1]<MAX_PERIOD){
             period[1]++;
         }
         else{
             period[1]=MIN_PERIOD;
             toggle[1]=TOGGLE_OFF;
         }
     }
     else{
         SSD_SetState(current_ssd, SSD_ON);
     }

}
