//render function to test LCD_I2C library
#include <Bela.h>
#include <LCD_I2C.h>


LCD_I2C myDisplay(1, 0x27); // myDisplay I2C is on bus=1 addr=0x27


bool setup(BelaContext *context, void *userData)
{
	myDisplay.clear();
	myDisplay.write("Hello World!");
	sleep(1);

    myDisplay.setCursorWrite(0,0,"Backlight cycling");
    sleep(1);
    myDisplay.noBacklight();
    myDisplay.clear();
    myDisplay.setCursorWrite(1,0,"Boo!");
    sleep(1);
    myDisplay.backlight();
    sleep(1);
    myDisplay.clear();

    myDisplay.setCursorWrite(0,0,"Display cycling  ");
    sleep(1);
    myDisplay.noDisplay();
    myDisplay.clear();
    myDisplay.setCursorWrite(2,0,"Surprise!");
    sleep(1);
    myDisplay.display();
    sleep(1);
    myDisplay.clear();
    
    myDisplay.setCursorWrite(0,0,"Cursor on blink off");
	myDisplay.noBlink();
    myDisplay.setCursor(1,0);
    sleep(1);
    myDisplay.setCursor(1,1);
    sleep(1);
    myDisplay.setCursor(1,2);
    sleep(1);
    myDisplay.setCursor(1,3);
    sleep(2);

    myDisplay.setCursorWrite(0,0, "Blink on cursor off");
	myDisplay.blink();
	myDisplay.noCursor();	
    myDisplay.setCursor(1,0);
    sleep(1);
    myDisplay.setCursor(1,1);
    sleep(1);
    myDisplay.setCursor(1,2);
    sleep(1);
    myDisplay.setCursor(1,3);
    sleep(2);

 
    myDisplay.clear();
    myDisplay.setCursorWrite(0,0,"Writing");
    sleep(1);
    myDisplay.setCursorWrite(1,5,"where");
    sleep(1);
    myDisplay.setCursorWrite(2,10,"you wish");
    myDisplay.noBlink();
    sleep(1);

	// to print numbers on LCD using printf style formatting:
	float value = 123.45;
	char buffer[20];
	snprintf (buffer, 20, "value: %5.2f", value);
	myDisplay.setCursorWrite(3, 0, buffer);
	
	return true;
}

void render(BelaContext *context, void *userData)
{

}

void cleanup(BelaContext *context, void *userData)
{

}