#include <FIRFilter.h>

static float FIR_IMPULSE_RESPONSE[FIR_FILTER_LENGTH] = {};

void FIRFilter_Init(FIRFilter *fir)
{
    // Clear filter buffer
    for (int i = 0; i < FIR_FILTER_LENGTH; i++)
    {
        fir->buf[i] = 0.0f;
    }

    // Reset buffer index
    fir->bufIndex = 0;

    // Clear filter output
    fir->out = 0.0f;
}

float FIRFilter_Update(FIRFilter *fir, float input)
{
    // Store latest input sample in circular buffer
    fir->buf[fir->bufIndex] = input;
    // Increment buffer index (and wrap arround if necessary)
    fir->bufIndex = (fir->bufIndex + 1) % FIR_FILTER_LENGTH;

    // Calculate output sample (using convolution)
    fir->out = 0.0f;

    u8 sumIndex = fir->bufIndex;

    for (u8 n = 0; n < FIR_FILTER_LENGTH; n++)
    {
        if (sumIndex > 0)
        {
            sumIndex--; // Decrement index
        }
        else
        {
            sumIndex = FIR_FILTER_LENGTH - 1; // Wrap around
        }

        // multiply impulse response with shifted input sample and add to output

        fir->out += FIR_IMPULSE_RESPONSE[n] * fir->buf[sumIndex];
    }

    return fir->out;
}