/*
render.cpp   version 1.0 2022-04-23  by John Buschert  

Roller for Amplitude and Knob for Frequency of Sinewave
Roller has encoder with quadrature outputs to Bela digital inputs
Calls encoder routines from encoder.h and encoder.cpp
*/

#include <Bela.h>
#include <cmath>
#include <encoder.h>

//Hardware connections
int gFreqChan = 0;  //analog input channel for frequency control from pot
Encoder encoderOne(6,7); // Encoder A, B are connected to these digital inputs 6,7

// Globals
float frequency;
float gPhase1 = 0;
float gSampleTime;
// float gAmplZero = 0.5/4.096;  // 0.5 is voltage level to be treated as zero amplitude
// float gAmplMax = 2.5/4.096;  // 2.5 is max input voltage level
int gAnalogFrameRatio = 0;    //  


bool setup(BelaContext *context, void *userData)   //  ===================SETUP=====================
{
	gSampleTime = 1.0 / context->audioSampleRate;
	gAnalogFrameRatio = context->audioFrames / context->analogFrames; // I use Analog frame rate of 22050 for 8 channels
	
	return true;
}

void render(BelaContext *context, void *userData)  //  ===================RENDER========================
{
	for(unsigned int n = 0; n < context->audioFrames; n++) {  // n counts thru the block of 16 frames
		if(gAnalogFrameRatio && !(n % gAnalogFrameRatio)) {
			// if n is odd, read analog inputs and update frequency 
			frequency = map(analogRead(context, n/gAnalogFrameRatio, gFreqChan), 0, 1, 100, 1000);
		}
		
		float speed = encoderOne.getSpeed(context, n);
	
		float out = 1.0 * speed * sinf(gPhase1);  // simple sine wave sound
		gPhase1 += 2.0 * M_PI * frequency * gSampleTime;
		if(gPhase1 > 2.0 * M_PI) gPhase1 -= 2.0 * M_PI;

		audioWrite(context, n, 0, out);  // output left channel to audio amp
	    audioWrite(context, n, 1, out);  // output right channel
	    
	}
}

void cleanup(BelaContext *context, void *userData) {   //  ==================CLEANUP======================

}
