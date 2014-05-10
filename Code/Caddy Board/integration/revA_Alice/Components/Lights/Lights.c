//light controller functions
#include <avr/io.h>

//turn lights on and off
char setLight(char lightTarget) {
   //dummy function, nothing happens
	if(lightTarget == 1){
		PORTB |= 0x80;
	} else {
		PORTB &= ~0x80;
	}
   return 1;
}
//specs make no mention of a getLight

