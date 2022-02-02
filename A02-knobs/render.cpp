/*
Analog Input to Control Frequency and Amplitude of Sinewave
If switch is used on amplitude input, then latency can be seen 
John Buschert  
*/
#include <Bela.h>
#include <cmath>

int gFreqChan = 0;  //analog input channel for frequency control from pot
int gAmplChan = 1;  //analog input channel for amplitude control from pot or strain amp
float frequency;
float amplitude;
float amplitudeNew;
float gPhase1 = 0;
float gSampleTime;
float gAmplZero = 0.5/4.096;  // 0.5 is voltage level to be treated as zero amplitude
float gAmplMax = 2.5/4.096;  // 2.5 is max input voltage level
int gAnalogFrameRatio = 0;    //  

bool setup(BelaContext *context, void *userData)   //  ===================SETUP=====================
{
	gSampleTime = 1.0 / context->audioSampleRate;
	gAnalogFrameRatio = context->audioFrames / context->analogFrames; // I use Analog frame rate of 22050 for 8 channels
	return true;
}

void render(BelaContext *context, void *userData)  //  ===================RENDER========================
{
	for(unsigned int n = 0; n < context->audioFrames; n++) {  // n counts thru the block of 16
		if(gAnalogFrameRatio && !(n % gAnalogFrameRatio)) {
			// if n is odd, read analog inputs and update frequency and amplitude
			frequency = map(analogRead(context, n/gAnalogFrameRatio, gFreqChan), 0, 1, 100, 1000);
			amplitudeNew = map(analogRead(context, n/gAnalogFrameRatio, gAmplChan), gAmplZero, gAmplMax, 0.0, 1.0);
		}
		if(amplitudeNew<0) amplitudeNew = 0;  // don't allow negative amplitude
		amplitude = amplitudeNew*0.05 + amplitude*0.95;  // A bit of averaging to reduce the noise on the analog input
		float out = 1.0 * amplitude * sinf(gPhase1);  // simple sine wave sound
		gPhase1 += 2.0 * M_PI * frequency * gSampleTime;
		if(gPhase1 > 2.0 * M_PI) gPhase1 -= 2.0 * M_PI;

		audioWrite(context, n, 0, out);  // output left channel to audio amp
	    audioWrite(context, n, 1, out);  // output right channel
	    
	}
}

void cleanup(BelaContext *context, void *userData) {   //  ==================CLEANUP======================
}
