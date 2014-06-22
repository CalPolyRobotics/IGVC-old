// Code to controller the Sonar sensors
#include "FreeRTOS.h"
#include "semphr.h"
#include <avr/interrupt.h>
#include <avr/io.h>

#include "../../protocol.h"
#include "../../ADC.h"
#include "../../usart.h"
#include "Sonar.h"

//xSemaphoreHandle* sonarSemaphore;
//xSemaphoreHandle* sonarDataMutex[6];

void sonarADCHandler(int result, void *sonarNum);

static int sonarData[6];

void setSonarData(int i,int data){
   //xSemaphoreTake(sonarDataMutex[i],portMAX_DELAY);
   sonarData[i] = data;
   //xSemaphoreGive(sonarDataMutex[i]);
}

int getSonarData(int i){
   //xSemaphoreTake(sonarDataMutex[i],portMAX_DELAY);
   return sonarData[i];
   //xSemaphoreGive(sonarDataMutex[i]);
}

void sonarADCHandler(int result,void *sonarNum){

	setSonarData(*((int *)sonarNum),result);

}

void initializeSonarSensors(){

	//addADCDevice(0,ADC_OPT_PRECISION_HIGH,sonarADCHandler,&sonarNum0);			
	//addADCDevice(12,ADC_OPT_PRECISION_HIGH,sonarADCHandler,&sonarNum1);			
	//addADCDevice(15,ADC_OPT_PRECISION_HIGH,sonarADCHandler,&sonarNum2);			

}

char getAllSensors(int* responseData){
   unsigned short i;
   for(i=0;i<6;i++){
      //responseData[i] = getSonarData(i);
      responseData[i] = i+1;
   }
   return 1;
}

char getCertainSensor(unsigned char commandData,int* responseData){
   if(commandData < 6){
      responseData[commandData] = getSonarData(commandData);
   }
   return 1;
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
   return 1;

}
