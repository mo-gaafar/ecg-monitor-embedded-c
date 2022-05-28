#include <main.h>
#include <Port.h>
#include <ADC.h>
#include <ECG.h>
#include <Buzzer.h>
#include <Led.h>
#include <Push_Button.h>

#include <stdio.h>
#include <stdlib.h>
#include <avr/pgmspace.h>

const float s_ecg[226] = {1.5989, 1.5978, 1.5995, 1.5976, 1.5991, 1.5984, 1.5981, 1.5993, 1.5976, 1.5993, 1.5982, 1.5982, 1.5993, 1.5975, 1.5994, 1.5981, 1.5983, 1.5995, 1.5967, 1.6049, 1.6248, 1.647, 1.664, 1.6763, 1.6851, 1.6851, 1.6816, 1.6712, 1.655, 1.6376, 1.613, 1.599, 1.5985, 1.5982, 1.5989, 1.5982, 1.5986, 1.5987, 1.598, 1.5991, 1.598, 1.5987, 1.5987, 1.598, 1.5992, 1.5979, 1.5988, 1.5986, 1.598, 1.5992, 1.5979, 1.5988, 1.5986, 1.598, 1.5992, 1.5978, 1.5989, 1.5985, 1.5981, 1.5992, 1.5978, 1.599, 1.5985, 1.5981, 1.5992, 1.5977, 1.599, 1.5984, 1.5981, 1.5984, 1.5992, 1.5974, 1.5996, 1.5978, 1.5985, 1.5992, 1.5973, 1.5998, 1.5976, 1.5986, 1.5992, 1.5972, 1.6, 1.5973, 1.5989, 1.5991, 1.5969, 1.6006, 1.5964, 1.6, 1.5979, 1.5994, 1.6617, 1.7483, 1.823, 1.8942, 1.9581, 2.0167, 2.0637, 2.1034, 2.1309, 2.1481, 2.1679, 2.1739, 2.1702, 2.1543, 2.1243, 2.0889, 2.037, 1.982, 1.9118, 1.8305, 1.7532, 1.6585, 1.6013, 1.5979, 1.5981, 1.5996, 1.5972, 1.5992, 1.599, 1.5966, 1.6015, 1.5952, 1.6008, 1.5984, 1.5953, 1.606, 1.5841, 1.6796, 1.9584, 2.2559, 2.5424, 2.835, 3.1262, 3.4167, 3.7061, 4.0018, 4.2846, 4.5852, 4.8688, 5.1586, 5.4686, 5.4698, 5.1579, 4.8687, 4.586, 4.2833, 4.0031, 3.7055, 3.4164, 3.1274, 2.8333, 2.544, 2.2554, 1.9572, 1.6836, 1.5617, 1.5143, 1.4221, 1.3538, 1.2791, 1.1951, 1.1326, 1.0407, 0.99412, 1.0445, 1.1262, 1.2017, 1.2744, 1.3545, 1.4265, 1.5044, 1.5787, 1.6006, 1.5979, 1.5988, 1.5982, 1.5989, 1.5982, 1.5986, 1.5987, 1.5983, 1.5984, 1.5992, 1.5965, 1.6082, 1.6726, 1.7553, 1.826, 1.903, 1.9731, 2.0407, 2.1079, 2.166, 2.2251, 2.2754, 2.3215, 2.3637, 2.396, 2.4268, 2.4473, 2.4627, 2.4725, 2.4721, 2.4692, 2.4557, 2.4374, 2.4131, 2.3797, 2.3441, 2.2988, 2.2506, 2.1969, 2.1365, 2.0757, 2.0068, 1.9384, 1.8652, 1.7899, 1.7157, 1.6346, 1.5962, 1.5997, 1.5979, 1.5986, 1.5989};
u8 SnoozeFlag = 0;

void ECG_Init()
{
    // pre-recorded ECG, for testing
    s_ecg_idx = 0;

    ecg_found_ticks_ms = 0;
    ecg_old_found_ticks_ms = 0;
    bpm = 0;
    // circular buffer for input ecg signal
    // we need to keep a history of M + 1 samples for HP filter
    // ecg_buff[M + 1] = {0};
    ecg_buff_WR_idx = 0;
    ecg_buff_RD_idx = 0;

    // circular buffer for input ecg signal
    // we need to keep a history of N+1 samples for LP filter
    // hp_buff[N + 1] = {0};
    hp_buff_WR_idx = 0;
    hp_buff_RD_idx = 0;

    // LP filter outputs a single point for every input point
    // This goes straight to adaptive filtering for eval
    next_eval_pt = 0;

    // running sums for HP and LP filters, values shifted in FILO
    hp_sum = 0;
    lp_sum = 0;

    // working variables for adaptive thresholding
    treshold = 0;
    triggered = false;
    trig_time = 0;
    win_max = 0;
    win_idx = 0;

    // numebr of starting iterations, used determine when moving windows are filled
    number_iter = 0;

    tmp = 0;
}

u8 ECG_Get_BPM(void)
{
    return bpm;
}

u16 ECG_Get_Sample(void)
{
#if ECG_DEBUG
    if (s_ecg_idx == S_ECG_SIZE)
    {
        s_ecg_idx = 0;
    }
    float ecg_samp = s_ecg[s_ecg_idx] * 204.8;
    s_ecg_idx++;
    return ecg_samp;
#else
    // Timing overhead: 5 us
    return ADC_Read(ADC_ECG_IN_PIN);
#endif
}

ECG_Arrythmia_Type ECG_Get_Arrythmia_Type(void)
{

    if (bpm < 30)
    {
        return Irregular_Heartbeat;
    }
    else if (bpm < 50)
    {
        return Bradycardia;
    }
    else if (bpm < 100)
    {
        return Normal;
    }
    else
    {
        return Tachycardia;
    }
}

char *ECG_Get_Arrythmia_Type_String(void)
{
    switch (ECG_Get_Arrythmia_Type())
    {
    case Normal:
        return "    Normal     ";
    case Tachycardia:
        return "  Tachycardia  ";
    case Bradycardia:
        return "  Bradycardia  ";
    case Irregular_Heartbeat:
        return "   Irregular   ";
    default:
        return "    Unknown    ";
    }
}

void ECG_Update_BPM(void)
{

    bpm = 60 * (ecg_found_ticks_ms - ecg_old_found_ticks_ms) / 1000;
    ecg_old_found_ticks_ms = ecg_found_ticks_ms; // reset ms counter
}

void ECG_Update(void)
{
    if (ECG_Detect(ECG_Get_Sample()))
    {
        ECG_Update_BPM();
    }
    ecg_found_ticks_ms += ECG_Sample_Period_ms;
}

void ECG_Update_Alarm(void)
{
    // checks arrythmia type
    // if arrythmia type is not normal
    // then set buzzer to be on and set led to be on and send data to LCD
    // if arrythmia type is normal
    // then set buzzer to be off and set led to be off and send data to LCD

    if (ECG_Get_Arrythmia_Type() != Normal)
    {
        if (!SnoozeFlag)
        {
            BUZ_SetMode(BUZ_ALARM, BUZ_PATTERN_MODE);
        }
        else
        {
            BUZ_SetMode(BUZ_ALARM, BUZ_STOPPED_MODE);
        }
        // buzzer snooze toggling
        if (PB_GetClicks(PB_SNOOZE) > 0)
        {
            if (SnoozeFlag)
            {
                SnoozeFlag = 0;
            }
            else
            {
                SnoozeFlag = 1;
            }
            PB_ResetClicks(PB_SNOOZE);
        }
        LED_On(LED_ALARM);
    }
    else
    {
        BUZ_SetMode(BUZ_ALARM, BUZ_STOPPED_MODE);
        LED_Off(LED_ALARM);
        PB_ResetClicks(PB_SNOOZE);
        SnoozeFlag = 0;
    }
}

u8 ECG_Detect(float new_ecg_pt)
{

    // copy new point into circular buffer, increment index
    ecg_buff[ecg_buff_WR_idx++] = new_ecg_pt;
    ecg_buff_WR_idx %= (M + 1);

    /* High pass filtering */
    if (number_iter < M)
    {
        // first fill buffer with enough points for HP filter
        hp_sum += ecg_buff[ecg_buff_RD_idx];
        hp_buff[hp_buff_WR_idx] = 0;
    }
    else
    {
        hp_sum += ecg_buff[ecg_buff_RD_idx];

        tmp = ecg_buff_RD_idx - M;
        if (tmp < 0)
            tmp += M + 1;

        hp_sum -= ecg_buff[tmp];

        float y1 = 0;
        float y2 = 0;

        tmp = (ecg_buff_RD_idx - ((M + 1) / 2));
        if (tmp < 0)
            tmp += M + 1;

        y2 = ecg_buff[tmp];

        y1 = HP_CONSTANT * hp_sum;

        hp_buff[hp_buff_WR_idx] = y2 - y1;
    }

    // done reading ECG buffer, increment position
    ecg_buff_RD_idx++;
    ecg_buff_RD_idx %= (M + 1);

    // done writing to HP buffer, increment position
    hp_buff_WR_idx++;
    hp_buff_WR_idx %= (N + 1);

    /* Low pass filtering */

    // shift in new sample from high pass filter
    lp_sum += hp_buff[hp_buff_RD_idx] * hp_buff[hp_buff_RD_idx];

    if (number_iter < N)
    {
        // first fill buffer with enough points for LP filter
        next_eval_pt = 0;
    }
    else
    {
        // shift out oldest data point
        tmp = hp_buff_RD_idx - N;
        if (tmp < 0)
            tmp += (N + 1);

        lp_sum -= hp_buff[tmp] * hp_buff[tmp];

        next_eval_pt = lp_sum;
    }

    // done reading HP buffer, increment position
    hp_buff_RD_idx++;
    hp_buff_RD_idx %= (N + 1);

    /* Adapative thresholding beat detection */
    // set initial threshold
    if (number_iter < winSize)
    {
        if (next_eval_pt > treshold)
        {
            treshold = next_eval_pt;
        }

        // only increment number_iter iff it is less than winSize
        // if it is bigger, then the counter serves no further purpose
        number_iter++;
    }

    // check if detection hold off period has passed
    if (triggered == true)
    {
        trig_time++;

        if (trig_time >= 100)
        {
            triggered = false;
            trig_time = 0;
        }
    }

    // find if we have a new max
    if (next_eval_pt > win_max)
        win_max = next_eval_pt;

    // find if we are above adaptive threshold
    if (next_eval_pt > treshold && !triggered)
    {
        triggered = true;

        return true;
    }
    // else we'll finish the function before returning FALSE,
    // to potentially change threshold

    // adjust adaptive threshold using max of signal found
    // in previous window
    if (win_idx++ >= winSize)
    {
        // weighting factor for determining the contribution of
        // the current peak value to the threshold adjustment
        float gamma = 0.175;

        // forgetting factor -
        // rate at which we forget old observations
        // choose a random value between 0.01 and 0.1 for this,
        float alpha = 0.01 + (((float)rand() / (float)RAND_MAX) * ((0.1 - 0.01)));
        // compute new threshold
        treshold = alpha * gamma * win_max + (1 - alpha) * treshold;

        // reset current window index
        win_idx = 0;
        win_max = -10000000;
    }

    // return false if we didn't detect a new QRS
    return false;
}