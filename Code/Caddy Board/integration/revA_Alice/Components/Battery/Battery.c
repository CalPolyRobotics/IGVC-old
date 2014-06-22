
#include <stdio.h>
#include "Battery.h"

#include "../../ADC.h"
//battery controller functions

void getBatteryVoltage12Handler(int a, void *dummy);


static int batteryVoltage12;

void getBatteryVoltage12Handler(int a, void *dummy){
   batteryVoltage12 = (a - 218) / 4 - 3;
}

void initializeBattery(){
   addADCDevice(3, ADC_OPT_PRECISION_HIGH, getBatteryVoltage12Handler, NULL);
}

//Gets voltage from 36V source
char getBatteryVoltage(char *sensorResponse) {
   *sensorResponse = 0;
   return 1;
}

//Gets voltage from 12V source 
char getSteeringVoltage(char *sensorResponse) {
   *sensorResponse = batteryVoltage12;
   return 1;
}
