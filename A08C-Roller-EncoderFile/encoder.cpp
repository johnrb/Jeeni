// encoder.cpp   version 1.0 2022-04-23
// Encoder Handing Routines source file

#include <Bela.h>
#include <encoder.h>
BelaContext *CONTEXT;

// initialize encoder routines.  
Encoder::Encoder(int Apin, int Bpin) {   // this is the constructor
	APIN = Apin;
	BPIN = Bpin;
}

float Encoder::getSpeed(BelaContext *context, int n) {
	int encoderA = digitalRead(context, n, APIN);
	int encoderB = digitalRead(context, n, BPIN);
	int encoderState = encoderA + 2*encoderB;
	int encoderChange = (encoderState - encoderLastState) % 4;  // 0 = no change, 1= Pos change, 3 = Neg, 2 = error
	if (encoderChange==0) {   // No change so keep counting the time
			thisStateCounter++;
	}
	else {                    // got a change so reset everything ( in future could find direction here )
			lastStateCount = thisStateCounter;
			thisStateCounter = 1;
			encoderLastState = encoderState;
	}
	if (thisStateCounter > lastStateCount) {lastStateCount = thisStateCounter;}  //encoder slowing, so react already
	newSpeed =  float(minCount)/float(lastStateCount);
	if (lastStateCount > maxCount ) {newSpeed = 0;}  //past count limit so treat as stopped
	speed = lastSpeed + smoothFrac*(newSpeed-lastSpeed); //low pass filter smoothing
	lastSpeed = speed; 
	return speed;
}
