#include <avr/io.h>
#include <avr/interrupt.h>
#include "FreeRTOS.h"
#include "task.h"
#include "../../ADC.h"
#include "Steering.h"
//Steering group

#define STEERING_PORT	PORTB
#define STEERING_LEFT	(1 << 5)
#define STEERING_RIGHT	(1 << 4)

#define STEERING_LEFT_COM0 COM1A0
#define STEERING_LEFT_COM1 COM1A1

#define STEERING_RIGHT_COM0 COM1B0
#define STEERING_RIGHT_COM1 COM1B1

#define STEERING_LEFT_CMPH OCR1AH
#define STEERING_LEFT_CMPL OCR1AL
#define STEERING_RIGHT_CMPH OCR1BH
#define STEERING_RIGHT_CMPL OCR1BL

static int steeringTarget;
static int wheelAngle;

static int steeringDir;
static int steeringSpd;

void printHex(int a);
void printNum(int a);
void USART_Write(char a);
void printWheelAngle(void);
void getLinearPotCallback(int data, void *parameters);


void getLinearPotCallback(int data,void *parameters){
	wheelAngle = data / -4 + 74;
   //wheelAngle = data;
}

void initializeSteeringTimer(){
	
	//TCCR1A = (1 << COM1A1)|(1 << WGM11);
   TCCR5A = (1 << WGM51);
	TCCR5B = (1 << WGM52)|(1 << CS50);
	TCCR5C = 0;

   OCR5AH = 0xFF;
   OCR5AL = 0xFF;

   TIMSK5 = (1 << OCIE5A)|(1 << TOIE5);

}

ISR(TIMER5_OVF_vect) {

   if(steeringDir == -1) {
      PORTB &= ~(1 << PB5);
      PORTB |= (1 << PB4);
   } else if(steeringDir == 1) {
      PORTB &= ~(1 << PB4);
      PORTB |= (1 << PB5);
   } else {
      PORTB &= ~((1 << PB4) | (1 << PB5));
   }
}

ISR(TIMER5_COMPA_vect) {
   PORTB &= ~((1 << PB4)|(1 << PB5));
}

void setSteeringPWMSpeed(int spd){
   steeringSpd = spd * steeringDir;

   if(spd > 0x1B0) spd = 0x1B0;
      

   OCR5AH = spd >> 8;
   OCR5AL = spd & 0xFF;

    
   /*if(steeringDir == 1) {
      STEERING_LEFT_CMPH = steeringSpd >> 8;
      STEERING_LEFT_CMPL = steeringSpd & 0xFF;

      STEERING_RIGHT_CMPH = 0;
      STEERING_RIGHT_CMPL = 0;

      TCCR1A &= ~((1 << STEERING_RIGHT_COM0)|(1 << STEERING_RIGHT_COM1));
      TCCR1A |= (1 << STEERING_LEFT_COM1);
   } else if(steeringDir == -1) {
      STEERING_RIGHT_CMPH = steeringSpd >> 8;
      STEERING_RIGHT_CMPL = steeringSpd & 0xFF;

      STEERING_LEFT_CMPH = 0;
      STEERING_LEFT_CMPL = 0;

      TCCR1A &= ~((1 << STEERING_LEFT_COM0)|(1 << STEERING_LEFT_COM1));
      TCCR1A |= (1 << STEERING_RIGHT_COM1);
   } else {
      STEERING_LEFT_CMPH = 0;
      STEERING_LEFT_CMPL = 0;
      STEERING_RIGHT_CMPH = 0;
      STEERING_RIGHT_CMPL = 0;
   }*/
}



void setSteeringDirection(int dir){
	/*switch(dir){
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
	}*/
   steeringDir = dir;
}

//JUST SETS ANGLE TARGET. Actual angle changing is lower level
char setAngle(char angleTarget) {
	steeringTarget = angleTarget;
   return 1;
}

//get the current angle of the steering system
char getAngle(char* sensorResponse) {
   *sensorResponse = wheelAngle;
   //return success
   return 1;
}

//get the angle target. argument name is sensorResponse for the sake of consistancy
char getDesiredAngle(char* sensorResponse) {
   *sensorResponse = steeringTarget;
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

void printWheelAngle() {
   if(wheelAngle & 0x1000) {
      USART_Write('-');
      wheelAngle *= -1;
   }      
   printNum(wheelAngle);
   USART_Write('\r');
   USART_Write('\n');
}

void vTaskSteer(void* parameters){


	addADCDevice(0,ADC_OPT_PRECISION_HIGH,getLinearPotCallback,0);

	int pConst = 35; 
	int adjust;

	steeringTarget = 0;
	while(1){
      
	   adjust = pConst * (steeringTarget - wheelAngle);
	   if(adjust < steeringTarget - 3*pConst){
	      setSteeringDirection(-1);
         adjust *= -1;
	   } else if (adjust > steeringTarget + 3*pConst){
	      setSteeringDirection(1);
	   } else {
	      setSteeringDirection(0);
	      //steeringTarget = wheelAngle;
	   }
      setSteeringPWMSpeed(adjust + 50);
      printNum(adjust + 50);
      USART_Write(' ');
      printWheelAngle();
 
	   vTaskDelay(10);
	}

}

