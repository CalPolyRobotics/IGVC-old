// Code to controller the Sonar sensors
#include "FreeRTOS.h"
#include "semphr.h"
#include <avr/interrupt.h>
#include <avr/io.h>

#include "../../protocol.h"
#include "../../ADC.h"
#include "../../usart.h"
#include "Sonar.h"

xSemaphoreHandle* sonarSemaphore;
xSemaphoreHandle* sonarDataMutex[6];

static int sonarData[6];
static int sonarNum0 = 0;
static int sonarNum1 = 1;
static int sonarNum2 = 2;

static unsigned char currSonar;
static unsigned char lastSonarData = 0;

/*void printHex(int i){
	char hex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

	USART_Write(hex[(i&0xF000) >> 12]);
	USART_Write(hex[(i&0xF00) >> 8]);
	USART_Write(hex[(i&0xF0) >> 4]);
	USART_Write(hex[i&0xF]);

}   */

void setSonarData(int i,int data){
// xSemaphoreTake(sonarDataMutex[i],portMAX_DELAY);
   sonarData[i] = data;
   //xSemaphoreGive(sonarDataMutex[i]);
}

int getSonarData(int i){
   //xSemaphoreTake(sonarDataMutex[i],portMAX_DELAY);
   return sonarData[i];
   //xSemaphoreGive(sonarDataMutex[i]);
}

unsigned char getTimerCount(){
   return TCNT0;
}

inline void setTimerCount(unsigned char i){
   TCNT0 = i;
}

ISR(PCINT2_vect) {

   unsigned char beginCount;
   unsigned char currCount;
   char i=0;   

   if(PINK&(1<<currSonar)){
      //USART_AddToQueue('U');
      beginCount = getTimerCount();
      PORTE = 0xFF;
   } else {
      //USART_AddToQueue('D');
      currCount = getTimerCount();
      if(currCount > beginCount){
         lastSonarData = currCount - beginCount;
      }
      PORTE = 0;
      xSemaphoreGiveFromISR(sonarSemaphore,0);
   }

}

void sonarADCHandler(int result,void *sonarNum){

	/*printHex(*((int *)sonarNum));
	USART_Write('\n');
	USART_Write('\r');*/

	setSonarData(*((int *)sonarNum),result);

}

void initializeSonarSensors(){
   //DDRD &= 0xFE;   
   /*DIDR2 = 0;
   DDRK = 0;
   DDRC = 0;

   PORTC = 0;

   //EICRA = 1;
   //EIMSK = 1;

   PCMSK2 = 0xFF;
   PCICR = 0x7;

   TCCR0A = 0;
   TCCR0B = 5;*/

	//addADCDevice(0,ADC_OPT_PRECISION_HIGH,sonarADCHandler,&sonarNum0);			
	//addADCDevice(12,ADC_OPT_PRECISION_HIGH,sonarADCHandler,&sonarNum1);			
	//addADCDevice(15,ADC_OPT_PRECISION_HIGH,sonarADCHandler,&sonarNum2);			

}

void vTaskSonar(void* parameter){

   int i;
   initializeSonarSensors();
	for(;;){
		vTaskDelay(300);
	}
   
   vSemaphoreCreateBinary(sonarSemaphore);
      
   currSonar = 0;

   while(1){
      for(i=0;i<2;i++){
         currSonar = i;
         PORTC = (1<<i);
         xSemaphoreTake(sonarSemaphore,portMAX_DELAY);
         setSonarData(i,lastSonarData);
      }
   }
            
} 

char getAllSensors(unsigned short* responseData){
   unsigned short i;
   for(i=0;i<6;i++){
      //responseData[i] = getSonarData(i);
      responseData[i] = i+1;
   }
}

char getCertainSensor(char commandData,int* responseData){
   if(commandData < 6){
      responseData[commandData] = getSonarData(commandData);
   }
}

char getSensorGroup(char commandData,int* responseData){

   switch(commandData){
      case SONAR_GROUP_LEFT:
         responseData[0] = getSonarData(0);
         responseData[1] = getSonarData(1);
         break;
      case SONAR_GROUP_FRONT:
         responseData[0] = getSonarData(2);
         responseData[1] = getSonarData(3);
         break;
      case SONAR_GROUP_RIGHT:
         responseData[0] = getSonarData(4);
         responseData[1] = getSonarData(5);
         break;
   }

}
