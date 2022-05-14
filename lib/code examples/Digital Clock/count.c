#include "count.h"
#include "ssd.h"
#include "push_button.h"

#define MAX_HOURS (23)
#define MAX_MINUTS (59)
#define MAX_SECONDS (59)

#define MIN_HOURS (0)
#define MIN_MINUTS (0)
#define MIN_SECONDS (0)

static HOURS hours;
static MINUTS minuts;
static SECONDS seconds;
static tSSD_LED led;

static Mode current_mode=NORMAL_MODE;


void CNT_Init(HOURS initial_hour,MINUTS initial_minut,SECONDS initial_second)
{
    hours = initial_hour;
    minuts = initial_minut;
    seconds = initial_second;
    led=LED_ON;
}

void CNT_Update(void)
{
    /* Update Mode*/
    if (PB_GetState(PB_CHANGE_MODE) == PB_PRE_RELEASED){
        switch(current_mode){
            case NORMAL_MODE:
                current_mode=SET_HOURS_MODE;
                SSD_SetMode(SET_HOURS_MODE);
                break;
            case SET_HOURS_MODE:
                current_mode=SET_MINUTES_MODE;
                SSD_SetMode(SET_MINUTES_MODE);
                break;
            case SET_MINUTES_MODE:
                current_mode=NORMAL_MODE;
                SSD_SetMode(NORMAL_MODE);
                break;
            default:
                break;
        }
    }

    /*Update Hours and Minutes according to current mode */
    switch(current_mode){
        case NORMAL_MODE:
            break;
        case SET_HOURS_MODE:
            if (PB_GetState(PB_PLUS) == PB_PRE_RELEASED){
                    if(hours<MAX_HOURS){
                       hours++;
                    }
                    else{
                        hours=MIN_HOURS;
                    }
            }
            else if(PB_GetState(PB_MINUS) == PB_PRE_RELEASED){
                    if(hours>MIN_HOURS){
                       hours--;
                    }
                    else{
                        hours=MAX_HOURS;
                    }
            }
            break;
        case SET_MINUTES_MODE:
            if (PB_GetState(PB_PLUS) == PB_PRE_RELEASED){
                    if(minuts<MAX_MINUTS){
                       minuts++;
                    }
                    else{
                        minuts=MIN_MINUTS;
                    }
            }
            else if(PB_GetState(PB_MINUS) == PB_PRE_RELEASED){
                    if(minuts>MIN_MINUTS){
                       minuts--;
                    }
                    else{
                        minuts = MAX_MINUTS;
                    }
            }
            break;
        default:
            break;
    }


    /* Set SSD symbols */
    SSD_SetSymbol(SSD_L, hours/10);
    SSD_SetSymbol(SSD_M, hours%10);


    SSD_SetSymbol(SSD_N, minuts/10);
    SSD_SetSymbol(SSD_R, minuts %10);

    SSD_SetLed(led);
}

void CNT_IncSeconds(void){
    if(seconds==MAX_SECONDS){
        seconds=MIN_SECONDS;
        if(minuts==MAX_MINUTS){
            minuts=MIN_MINUTS;
            if(hours<MAX_HOURS){
                hours++;
            }
            else{
                hours=MIN_HOURS;
            }
        }
        else{
            minuts++;
        }
    }
    else{
        seconds++;
    }
}

void CNT_toggleLed(void){
    if(led==LED_OFF && current_mode==NORMAL_MODE) led=LED_ON;
    else led=LED_OFF;
}

Mode CNT_getCurrentMode(){
    return current_mode;
}




