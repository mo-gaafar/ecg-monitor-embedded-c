#include <main.h>
#include <ECG.h>

#include <stdio.h>
#include <stdlib.h>

void ECG_Init(void)
{
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

    // parameters for adaptive thresholding
    treshold = 0;
    triggered = false;
    trig_time = 0;
    win_max = 0;
    win_idx = 0;

    num_iter = 0;
}

u8 ECG_Detect(float ecg)
{

    // copy new point into circular buffer, increment index
    ecg_buff[ecg_buff_WR_idx++] = ecg;
    ecg_buff_WR_idx %= (M + 1);

    // printf("i - %d\n", i);

    /* High pass filtering */
    if (num_iter < M)
    {
        // first fill buffer with enough points for HP filter
        hp_sum += ecg_buff[ecg_buff_RD_idx];
        hp_buff[hp_buff_WR_idx] = 0;
    }
    else
    {
        hp_sum += ecg_buff[ecg_buff_RD_idx];

        int tmp = ecg_buff_RD_idx - M;
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

    if (num_iter < N)
    {
        // first fill buffer with enough points for LP filter
        next_eval_pt = 0;
    }
    else
    {
        // shift out oldest data point
        int tmp = hp_buff_RD_idx - N;
        if (tmp < 0)
            tmp += N + 1;

        lp_sum -= hp_buff[tmp] * hp_buff[tmp];

        next_eval_pt = lp_sum;
    }

    // done reading HP buffer, increment position
    hp_buff_RD_idx++;
    hp_buff_RD_idx %= (N + 1);

    /* Adapative thresholding beat detection */
    // set initial threshold
    if (num_iter < winSize)
    {
        if (next_eval_pt > treshold)
        {
            treshold = next_eval_pt;
        }
    }

    // check if detection hold off period has passed
    if (triggered)
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
        // result[index] = 1;

        triggered = true;
        return true;
    }
    // else
    // {
    //     // result[index] = 0;
    // }

    // adjust adaptive threshold using max of signal found
    // in previous window
    if (win_idx++ >= winSize)
    {
        // weighting factor for determining the contribution of
        // the current peak value to the threshold adjustment
        float gamma = 0.175;

        // forgetting factor -
        // rate at which we forget old observations
        float alpha = 0.01 + (((float)rand() / (float)RAND_MAX) * ((0.1 - 0.01)));

        treshold = alpha * gamma * win_max + (1 - alpha) * treshold;

        // reset current window ind
        win_idx = 0;
        win_max = -10000000;
    }
    return false;
}