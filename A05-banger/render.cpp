/* A05_OneBanger_Pitch_Tone_Vary
One Piezo (banger) input with analog variable pitch and tone.
Second version with two sound font files
A BELA Project by John Buschert
Dependencies:  Bela.h, tsf.h, 
*/

#include <Bela.h>

// Setting up Tiny Sound Font synthesizer ---
#define TSF_IMPLEMENTATION
#include "tsf.h"
int max_voices = 32;  //  This affects the number of notes it can keep up with.
int samplerate = 44100;
float tsf_gain_db = 10;  // tsf output gain in dB
float tsf_bufferptr[64];  // buffer for 160 samples
const char *filename = "Piano.sf2";
const char *presetNames[25];
int preset1 = 2; // bright Piano preset
int preset2 = 3; // dark Piano preset
float tone; // ratio of two presets
tsf* fontptr;

// Hardware
int LEDpin = 7; // Trigger LED
int freqChan = 0;  //analog input channel for frequency control
int toneChan = 1;  //analog input channel for tone control from little pot
int piezoChan = 2; //analog input channel for piezo signal

// Initializing Global Variables
int gAnalogFrameRatio = 0;    //  gets set later, normally 2
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
int deadtime = 50 * 44.1/2; // dead time after a note (ms * 44.1 / frameratio = analog samples)
int deadtimeCounter = 0;

// =============== SETUP =============================================================================
bool setup(BelaContext *context, void *userData)
{
	gAnalogFrameRatio = context->audioFrames / context->analogFrames; // gAnalogFrameRatio is 2 

	fontptr = tsf_load_filename(filename);
	tsf_reset(fontptr);
	tsf_set_max_voices(fontptr, max_voices);
	tsf_set_volume(fontptr, 1.0);
	tsf_set_output(fontptr, TSF_MONO, samplerate, tsf_gain_db);
	
	pinMode(context, 0, LEDpin, OUTPUT);   // set LED Pin as output
	digitalWrite(context, 0, LEDpin, LOW );  // Turn off LED

	return true;
}

// ============== RENDER ============================================================================
void render(BelaContext *context, void *userData)
{
for(unsigned int n = 0; n < context->audioFrames; n++) {    // n counts thru the audio block size (16)
		if(gAnalogFrameRatio && !(n % gAnalogFrameRatio)) {   // Only do analog processing every other frame
            // Read in the new analog values
			frequency = map(analogRead(context, n/gAnalogFrameRatio, freqChan), 0, 1, 100, 1000);
			tone = analogRead(context, n/gAnalogFrameRatio, toneChan);
			piezo = analogRead(context, n/gAnalogFrameRatio, piezoChan);

            // Look at the Piezo signal for spikes indicating its been struck
            
			if(!peaked && !triggered) {  // must be looking for a new trigger
				if(piezo>piezoThresh) {  // just got a new trigger
					triggered = true;
					digitalWrite(context, n, LEDpin, HIGH);  // Turn on LED
					piezoPeak = piezo;  // keep track of what the level is
				}
			}
			else if(triggered && !peaked) {  // mode is looking for peak
				if(piezo>piezoPeak) {
					piezoPeak=piezo; // still climbing, raise peak level
				}
				else if(piezo<piezoDroop*piezoPeak) { // past peak, sound the note, start deadtime countdown
					peaked = true;
					pitch = map(frequency,100,1000,20,100);
					velocity =  map(piezoPeak, 0, 1, 0.0, 1.0);
					float velocity1 = velocity * tone;  // use tone to vary the ratio of the two sounds
					float velocity2 = velocity * (1.0-tone);
					tsf_note_off_all(fontptr);
                    rt_printf("noteOn by preset %i \n",tone);
					tsf_note_on(fontptr, preset1, pitch, velocity1);
					tsf_note_on(fontptr, preset2, pitch, velocity2);
					deadtimeCounter = deadtime;
				}
			}
			else {  // waiting to get back below threshhold and past deadtime
				deadtimeCounter = deadtimeCounter-1;
				if(deadtimeCounter<=0 && piezo<piezoThresh) {
					triggered = false;
					digitalWrite(context, n, LEDpin, LOW);  // Turn off LED
					peaked = false;
				}
			}
		}
	}
    //  This renders a frame of samples in one call and then writes them all out.
	int samples = context->audioFrames;
	tsf_render_float(fontptr, tsf_bufferptr, samples, 0);
	for (int i2 = 0; i2 < context->audioFrames; i2++){
		float output = tsf_bufferptr[i2];
		audioWrite(context, i2, 0, output);  // 0=left 1=right
		audioWrite(context, i2, 1, output);  // 0=left 1=right
	}
	
}

// =============== CLEANUP ==========================================================================
void cleanup(BelaContext *context, void *userData)
{

}