#include <avr/io.h>
#include "../../ADC.h"
//Steering group

#define STEERING_PORT	PORTL
#define STEERING_LEFT	(1 << 2)
#define STEERING_RIGHT	(1 << 3)

static int steeringTarget;
static int wheelAngle;

void getLinearPotCallback(int data,void *parameters){
	wheelAngle = data;
}

void initializeSteeringTimer(){
	
	TCCR1A = (1 << COM1A1)|(1 << WGM10);
	TCCR1B = (1 << CS10);
	TCCR1C = 0;

}

void setSteeringPWMSpeed(int spd){
	OCR1AH = spd >> 8;
	OCR1AL = spd & 0xFF;
}

void setSteeringDirection(int dir){
	switch(dir){
	case 0:
		STEERING_PORT &= ~STEERING_LEFT;
		STEERING_PORT &= ~STEERING_RIGHT;
		break;
	case 1:
		STEERING_PORT &= ~STEERING_LEFT;
		STEERING_PORT |= STEERING_RIGHT;
		break;
	case -1:
		STEERING_PORT &= ~STEERING_RIGHT;
		STEERING_PORT |= STEERING_LEFT;
		break;
	}
}

//JUST SETS ANGLE TARGET. Actual angle changing is lower level
char setAngle(char angleTarget) {
   //dummy function, nothing will happen for now...
   //return success
	steeringTarget = angleTarget;
   return 1;
}

//get the current angle of the steering system
char getAngle(char* sensorResponse) {
   //store fake angle reading
   *sensorResponse = 0;
   //return success
   return 1;
}

//get the angle target. argument name is sensorResponse for the sake of consistancy
char getDesiredAngle(char* sensorResponse) {
   //fake response
   *sensorResponse = 0;
   //return success
   return 1;
}

//change the PID controller
char changePID(char P, char I, char D) {
   //dummy function, nothing happens
   //return success
   return 1;
}

//not sure what this does. Also not sure why upper and lower are separated
//but its in the specs so...
char setLimits(char upper, char lower) {
   //dummy function, nothing happens
   //return success
   return 1;
}

void vTaskSteer(void* parameters){

	initializeSteeringTimer();

	addADCDevice(2,ADC_OPT_PRECISION_HIGH,getLinearPotCallback,0);

	int pConst = 1;
	int adjust;

	steeringTarget = 0x80;

	while(1){
		adjust = pConst * (steeringTarget - (wheelAngle >> 2));
		if(adjust < -10){
			setSteeringDirection(-1);
		} else if (adjust > 10){
			setSteeringDirection(1);
		} else {
			setSteeringDirection(0);
			steeringTarget = wheelAngle;
		}
		setSteeringPWMSpeed(adjust);
		vTaskDelay(10);
	}

}

