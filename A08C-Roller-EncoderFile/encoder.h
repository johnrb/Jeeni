// encoder.h   version 1.0 2022-04-23
// Encoder handling routines header file

#include <Bela.h>

class Encoder {
	public:
		Encoder(int Apin, int Bpin);
		float getSpeed(BelaContext *context, int n);

	private:
		int APIN;   // 
		int BPIN;
		int encoderLastState; // quadrature state saved from previous call
		int thisStateCounter;     // current running time for this state
		int lastStateCount;     // total duration of last state
		int minCount = 3;  // minimum expected count which will return maximum speed of 1 
		int maxCount = 4000; // anything longer than 0.1 s is treated as stopped 0.1 sec * 44,100 = 4000
		float newSpeed;
		float lastSpeed = 0;
		float speed;
		float smoothFrac = 0.01; // Smoothing fraction. Take this much of step toward new value. 
		                        // time constant = 1/(audioFrameTime*smoothFrac) = 1/(44,100*.01) = 2.2 ms
	
};