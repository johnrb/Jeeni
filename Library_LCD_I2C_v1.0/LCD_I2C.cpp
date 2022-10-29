#include <LCD_I2C.h>

// initialize LCD 
LCD_I2C::LCD_I2C (int bus, int address) {   // this is the constructor for the LCD object
	initI2C_RW(bus, address, 0);   // Initialze Bela I2C communication. the last parameter is ignored
	usleep(5000);
	// put into known 4-bit mode from unknown initial state
	nibble = 0x03;
    sendNibble(nibble, 0);  // first try at 8-bit mode
	usleep(5000);
    sendNibble(nibble, 0);  // second try at 8-bit mode
	usleep(100);
    sendNibble(nibble, 0);  // third try at 8-bit mode
	usleep(100);            // should be in 8-bit mode now no matter how started
 	nibble = 0x02;
    sendNibble(nibble, 0);  // now set to 4-bit mode
	usleep(50);
	// Set display lines and font, then clear and set mode
	hiNib = 0x02;
	loNib = 0b1000;  // 4bits: N F * * ; N=0 for 1 line, 1 for two or more lines, F=0 for normal 5x7 font, *=ignored
	sendCommand(hiNib, loNib);  // sets no. of lines and font
	usleep(50);
	clear();  // Clear display
	mode(gbacklight, gdisplay, gcursor, gblink);  // Set Backlight, Display, Cursor, Blink ; 0 or 1 for on or off
	usleep(10);
}

// mode to set backlight, display, cursor, blink, on/off
void LCD_I2C::mode(int backlight, int display, int cursor, int blink) {
	if(backlight!=0&&backlight!=1) {printf("backlight must be 0 or 1 not %d", backlight); return ;}
	if(cursor!=0&&cursor!=1) {printf("cursor must be 0 or 1 not %d", cursor); return ;}
	if(blink!=0&&blink!=1) {printf("blink must be 0 or 1 not %d", blink); return ;}
	if(display!=0&&display!=1) {printf("display must be 0 or 1 not %d", display); return ;}
	gbacklight = backlight; // this sets global variable that gets sent with every command
	hiNib = 0;
	loNib = 0b1000 | display<<2 | cursor<<1 | blink; // 4bits: 1 D C B ; D Display 1=on, C Cursor 1=on, B Blink 1=on
	sendCommand(hiNib, loNib);
	usleep(2000); // needs 1.52 ms but more time if 3.3V
}

// clear LCD display  
void LCD_I2C::clear() {
	hiNib = 0;
	loNib = 0x01;
	sendCommand(hiNib, loNib);
	usleep(2000); // needs 1.52 ms but more time if 3.3V
}

// home LCD display   
void LCD_I2C::home() {
	hiNib = 0;
	loNib = 0x02;
	sendCommand(hiNib, loNib);
	usleep(2000); //  needs 1.52 ms but more time if 3.3V
}

// write text to LCD  
void LCD_I2C::write(std::string text) {
    std::string::iterator it;
	for (it = text.begin(); it != text.end(); it++) {
		sendChar(*it);
	}
}

void LCD_I2C::begin() {	return; }  // null command for compatibility

void LCD_I2C::noDisplay() { 
	gdisplay = 0;
	mode(gbacklight, gdisplay, gcursor, gblink);
}

void LCD_I2C::display() { 
	gdisplay = 1;
	mode(gbacklight, gdisplay, gcursor, gblink);
}

void LCD_I2C::noBlink() { 
	gblink = 0;
	mode(gbacklight, gdisplay, gcursor, gblink);
}
void LCD_I2C::blink() { 
	gblink = 1;
	mode(gbacklight, gdisplay, gcursor, gblink);
}

void LCD_I2C::noCursor() { 
	gcursor = 0;
	mode(gbacklight, gdisplay, gcursor, gblink);
}

void LCD_I2C::cursor() { 
	gcursor = 1;
	mode(gbacklight, gdisplay, gcursor, gblink);
}

void LCD_I2C::noBacklight() { 
	gbacklight = 0;
	mode(gbacklight, gdisplay, gcursor, gblink);
}
void LCD_I2C::backlight() { 
	gbacklight = 1;
	mode(gbacklight, gdisplay, gcursor, gblink);
}

// set cursor to any row (0-3) and column (0-20)
void LCD_I2C::setCursor(uint8_t row, uint8_t col) {
    //	homeAddress[4] = {0x00, 0x40, 0x14, 0x54}; defined in header
	int8_t address = 0x80 + homeAddress[row] + col;  // put 1 in msb to change ddram address
	hiNib = address>>4;
	loNib = 0x0F & address;
	sendCommand(hiNib, loNib);
	usleep(2000); //  needs 1.52 ms but more time if 3.3V
}

// set cursor to row & col and then write text
void LCD_I2C::setCursorWrite(uint8_t row, uint8_t col, std::string text) {
	setCursor(row, col);
	write(text);
}

// low level write commands -----------------------------------------
/* LCD is controlled by hitachi  converter chip
Those lines (db7, db6, ... db1, db0) are connected to the Hitachi intputs (DB7, DB6, DB5, DB4, BL, EN, RW, RS)
BL backlight, EN Enable must pulse high for 1000 ns, RW Read/Write=0 for write, RS Register Select (0 for command, 1 for data) 
Only 4 data lines are connected so must use 4-bit mode in which all commands and data are sent in two steps
First the high nibble, then the low nibble.  Each of those steps is sent using three I2C packets, one to get the data onto 
lines but with enable still low.  Then the next two steps cylce the enable line high and low.
*/

// send an ASCII character to the LCD
void LCD_I2C::sendChar(uint8_t byte) {
	uint8_t hiNib = byte >> 4;
	uint8_t loNib = byte & 0x0F;
	sendNibble(hiNib, 1);
	sendNibble(loNib, 1);
}

// send a complete 8-bit command to the LCD using two 4-bit messages
void LCD_I2C::sendCommand(uint8_t hiNib, uint8_t loNib) {
	sendNibble(hiNib, 0);
	sendNibble(loNib, 0);
}

// send a 4-bit message by transmitting three I2C packets. rs=0 goes to command register, rs=1 is for data
void LCD_I2C::sendNibble(uint8_t nib, uint8_t rs) {
	uint8_t byte = (nib << 4) | (gbacklight << 3) | rs;  //  bits (DB7, DB6, DB5, DB4, BL, EN, RW, RS)
	uint8_t byte_en = byte | 0b0100;
	transmit(byte);  // put the data on the lines including the backlight and rs bits but with enable low
	usleep(1);
	transmit(byte_en);  // set enable line high
	usleep(1);         // enable pulse must be at least 1 usec
	transmit(byte);   // set enable line low
	usleep(1);
}

// transmit one-byte packet via I2C 
void LCD_I2C::transmit(uint8_t byte) {
	buf[0] = byte;
	int err = ::write(i2C_file, buf, 1);  // this calls the C++ write function
	if (err<0) {printf("write returned error: %d\n", err);}
}

