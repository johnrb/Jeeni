/*
Roller for Amplitude and Knob for Frequency of Sinewave
Roller has quadrature outputs to Bela digital inputs 
John Buschert  
*/
#include <Bela.h>
#include <cmath>

int gFreqChan = 0;  //analog input channel for frequency control from pot
int encoderApin = 6; // Encoder A is connected to this digital input
int encoderBpin = 7; // Encoder B is connected to this digital input


float frequency;
float amplitude;
float amplitudeNew;
float gPhase1 = 0;
float gSampleTime;
// float gAmplZero = 0.5/4.096;  // 0.5 is voltage level to be treated as zero amplitude
// float gAmplMax = 2.5/4.096;  // 2.5 is max input voltage level
int gAnalogFrameRatio = 0;    //  

int encoderA;
int encoderB;
int encoderState;
int encoderLastState;
int encoderChange;
int timeCount = 1;  // counts audio frames between encoder changes
int lastCount = 3999; 
int minCount = 3;  // minimum expected count which will be maximum amplitude
int maxCount = 4000; // anything longer than this is treated as stopped

int printCounter = 0;

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
		}
		
		// ---- reading the encoder -----  (this will become a function readEncoder() eventually) -----
		encoderA = digitalRead(context, n, 6);
		if (encoderA) {encoderA = 1;}
		encoderB = digitalRead(context, n, 7);
		if (encoderB) {encoderB = 1;}
		encoderState = encoderA + 2*encoderB;
		encoderChange = (encoderState - encoderLastState) % 4;
		if (encoderChange==0) {   // No change so keep counting the time
			timeCount++;
		}
		else {    // got a change so reset everything // in future could find direction here
			lastCount = timeCount;
			timeCount = 1;
			encoderLastState = encoderState;
		}
		if (timeCount > lastCount) {lastCount = timeCount;}  // in case encoder stopped
		amplitude =  float(minCount)/float(lastCount);
		if (lastCount > maxCount ) {amplitude = 0;}
		// -----
		
		
		float out = 1.0 * amplitude * sinf(gPhase1);  // simple sine wave sound
		gPhase1 += 2.0 * M_PI * frequency * gSampleTime;
		if(gPhase1 > 2.0 * M_PI) gPhase1 -= 2.0 * M_PI;

		//Optional Print out statements
		//if (printCounter++ > 10000) {
		//	rt_printf("Time count: %d  amplitude: %f\n",lastCount, amplitude );
		//	printCounter = 0;
		//}

		audioWrite(context, n, 0, out);  // output left channel to audio amp
	    audioWrite(context, n, 1, out);  // output right channel
	    
	}
}

void cleanup(BelaContext *context, void *userData) {   //  ==================CLEANUP======================
}
