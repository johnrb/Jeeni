/*  BMark7_TinySoundFont
Using Piezo Sensor to trigger Sound rendered by TinySoundFont Synthesizer using SoundFonts
A BELA Project by John Buschert
*/

#include <Bela.h>
#define TSF_IMPLEMENTATION
#include "tsf.h"
int max_voices = 4;
int samplerate = 44100;
float tsf_gain_db = 10;  // tsf output gain in dB
float tsf_bufferptr[ 640 ];  // buffer for 160 samples
float output;

int gAnalogFrameRatio = 0;    //  

const char *filename = "Piano.sf2";
//const tsf* f;
tsf* fontptr;

int freqChan = 0;  //analog input channel for frequency control
int amplChan = 1;  //analog input channel for amplitude control
int piezoChan = 2; //analog input channel for piezo signal

int pitch =   60 ;   // 60 = C4 (middle C)
float velocity =  0.5  ;  // 0 - 1.0

float frequency;
int amplitude;
float piezoThresh = 0.06 / 4.096; // Threshhold to trigger a note (V / 4.096 = piezoValue)
float piezo = 0.0;
float piezoPeak = 0.0;   
float piezoDroop = 0.8;  // droop down to this fraction of peak means peak is past
bool triggered = false;
bool peaked = false;
int deadtime = 100 * 44.1/4; // dead time after a note (ms * 44.1 / frameratio = analog samples)
int deadtimeCounter = 0;


bool setup(BelaContext *context, void *userData)
{
	gAnalogFrameRatio = context->audioFrames / context->analogFrames; // gAnalogFrameRatio is 2 

	fontptr = tsf_load_filename(filename);
	if (fontptr==NULL) { printf("fontptr is NULL pointer \n");}
	else { printf("fontptr points to something \n");}
	int presetcount = tsf_get_presetcount(fontptr);
	printf("preset count is %i \n", presetcount);
	tsf_reset(fontptr);
	tsf_set_volume(fontptr, 1.0);
	tsf_set_max_voices(fontptr, max_voices);
	tsf_set_output(fontptr, TSF_MONO, samplerate, tsf_gain_db);
	
	pinMode(context, 0, 6, OUTPUT);   // set LED Pin as output
	digitalWrite(context, 0, 6, 0 );  // Turn off LED

	return true;
}

void render(BelaContext *context, void *userData)
{
for(unsigned int n = 0; n < context->audioFrames; n++) {    // n counts thru the audio block size (16)
		if(gAnalogFrameRatio && !(n % gAnalogFrameRatio)) {   // Only do analog processing every other frame


			frequency = map(analogRead(context, n/gAnalogFrameRatio, freqChan), 0, 1, 100, 1000);
			piezo = analogRead(context, n/gAnalogFrameRatio, piezoChan);

			if(!peaked && !triggered) {  // looking for a new trigger
				if(piezo>piezoThresh) {  // just got a new trigger
					triggered = true;
					digitalWrite(context, n, 6, 1 );  // Turn on LED
					piezoPeak = piezo;
				}
			}
			else if(triggered && !peaked) {  // looking for peak
				if(piezo>piezoPeak) {
					piezoPeak=piezo; // still climbing, raise peak level
				}
				else if(piezo<piezoDroop*piezoPeak) { // past peak, sound the note, start deadtime countdown
					peaked = true;
					int preset_index = 0;
					pitch = map(frequency,100,1000,20,100);
					velocity = map(piezoPeak, 0, 1, 0.0, 1.0);
					tsf_note_off_all(fontptr);
//					rt_printf("noteOn %i \n", n);
					tsf_note_on(fontptr, preset_index, pitch, velocity);
					deadtimeCounter = deadtime;
				}
			}
			else {  // waiting to get back below threshhold and past deadtime
				deadtimeCounter = deadtimeCounter-1;
				if(deadtimeCounter<=0 && piezo<piezoThresh) {
					triggered = false;
					digitalWrite(context, n, 6, 0 );  // Turn off LED
					peaked = false;
				}
			}
		}
		int samples = 1;
		tsf_render_float(fontptr, tsf_bufferptr, samples, 0);
		output = tsf_bufferptr[0];
		audioWrite(context, n, 1, output);
		
	}
//	int samples = context->audioFrames;
//	tsf_render_float(fontptr, tsf_bufferptr, samples, 0);
//	for (int i2 = 0; i2 < context->audioFrames; i2++){
//		output = tsf_bufferptr[i2];
//		audioWrite(context, i2, 1, output);
//	}
	
}

void cleanup(BelaContext *context, void *userData)
{

}