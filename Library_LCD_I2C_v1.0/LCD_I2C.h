/* LCD_I2C.h   version 1.0 2022-10-28
   LCD w I2C writing routines header file
   This library allows Bela to write to a 20x4 LCD display via I2C
   It has been tested and works with the Sunfounder I2C LCD 2004
   It should work with most 16x2 or 20x4 displays that have an I2C backpack
   Specifically those using the HDD44780 and PCF8574T chips which seem to be common.  
   It does the same thing as the LiquidCrystal_I2C library for Arduino and other things but 
   instead of just encapsulating that yet one more time, I rewrote it but included most of 
   the LiquidCrystal_I2C commands for compatibility.
*/
#include <I2c.h>
#include <string>

class LCD_I2C : public I2c
{
	public:
		LCD_I2C (int bus, int address);  // Constructor.  For Bela the usual I2C bus is 1, the I2C address depends on your device

	//  standard commands in common with Liquid_Crystal_I2C library
		void clear();  // clears the display
		void home();   // returns cursor to row 0 col 0
		void setCursor(uint8_t row, uint8_t col);  // sets cursor at row(0-3), col(0-20) or whatever size you have
		void write(std::string text);  // writes text starting at cursor's location
		void noDisplay();
		void display();
		void noBlink();
		void blink();
		void noCursor();
		void cursor();
		void noBacklight();
		void backlight();
		void begin();  // unneeded null function kept only for compatibilty

	//  new commands
		void setCursorWrite(uint8_t row, uint8_t col, std::string text);  // sets cursor to coords and then writes text
		void mode(int backlight, int display, int cursor, int blink); // 1 or 0 sets all these on or off
		
	/*	not yet implemented from LiquidCrystal_I2C library
		scrollDisplayLeft
		scrollDisplayRight
		printLeft
		printRight
		ledftToRight
		RightToLeft
		shiftIncrement
		shiftDecrement
		autoScroll
		noAutoScroll
		createChar
		printRight
		init
		oled_init
	*/

	private:

	//  Lower level commands that differ from LiquidCrystal_I2C
		void sendChar(uint8_t);
		void sendCommand(uint8_t hiNib, uint8_t loNib);
		void sendNibble(uint8_t nib, uint8_t rs);
		void transmit(uint8_t byte);

		uint8_t buf[2] = {0,0};  // buffer for characters pass to I2c write (it wants an array, maybe could have been a pointer)		
		uint8_t nibble =0;
		uint8_t hiNib = 0;
		uint8_t loNib = 0;  
		int gbacklight = 1;  // default value when started
		int gdisplay = 1;  
		int gcursor = 1;
		int gblink = 1; 
		uint8_t homeAddress[4] = {0x00, 0x40, 0x14, 0x54};   // beginning address of each line for 2 or 4 line displays
		
		

};



