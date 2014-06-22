//Speed Sensor group
#include <avr/io.h>
#include "spi.h"

#include "Speed.h"

void initSpeedController(){
	SPIsendShort(0x400F);
}

void setPot(int value){
	unsigned short data = 0;
	data = value & 0xFF;

	SPIsendShort(data);
}

void decrementPot(){
	SPIsendByte(0x06);
}

void incrementPot(){
	SPIsendByte(0x0A);
}

//get the speed of the vehicle
char getSpeed(unsigned char* sensorResponse) {
   //store dummy speed value
   *sensorResponse = 0;
   //return success
   return 1;
}

//will set just the speed of the wheels of the car
char setSpeed(unsigned char speedTarget) {
   //nothing done down here
   //return success
	if(speedTarget == 0){
		PORTA &= ~4;
	} else {
		PORTA |= 4;
	}
	setPot(speedTarget);
   return 1;
}

