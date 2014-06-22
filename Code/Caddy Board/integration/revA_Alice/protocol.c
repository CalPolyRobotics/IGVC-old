/**
 * Skeleton of command recieve and response
 *
 * @author Louie Thiros
 */

#include "protocol.h"
#include "Components/Battery/Battery.h"
#include "Components/Brake/Brake.h"
#include "Components/Error/Error.h"
#include "Components/FNR/FNR.h"
#include "Components/Speed/Speed.h"
#include "Components/Steering/Steering.h"
#include "Components/Sonar/Sonar.h"
#include "Components/Lights/Lights.h"


char processUltrasonicCommand(char commandCode, void* commandData, Response* responseData); 
char processSpeedCommand(char commandCode, void* commandData, Response* responseData); 
char processSteeringCommand(char commandCode, void* commandData, Response* responseData); 
char processFNRCommand(char commandCode, void* commandData, Response* responseData); 
char processBrakeCommand(char commandCode, void* commandData, Response* responseData); 
char processBatteryCommand(char commandCode, void* commandData, Response* responseData); 
char processLightCommand(char commandCode, void* commandData, Response* responseData); 


//function to CRC the command structure
char commandIntegCheck(Command *command) {
   //CRC the command with 0x00 in place of the CRC
   //return success for now
   return 1;
}

char processUltrasonicCommand(char commandCode, void* commandData, Response* responseData) {
   switch(commandCode) {
      case GET_ALL_SENSORS:
         getAllSensors((int*) responseData->payload);
         break;
      case GET_CERTAIN_SENSORS:
         getCertainSensor(((char*)commandData)[0], (int*) responseData->payload);
         break;
      case GET_SENSOR_GROUP:
         getSensorGroup(((char*)commandData)[0], (int*) responseData->payload);
         break;
   }
   //return success for now...
   return 1;
}

char processSpeedCommand(char commandCode, void* commandData, Response* responseData) {
   switch(commandCode) {
      case GET_SPEED:
         getSpeed((unsigned char*) responseData);
         break;
      case SET_SPEED:
			responseData->size = 0;
         setSpeed(((char*)commandData)[0]);
         break;
   }
   //return success for now
   return 1;
}

char processSteeringCommand(char commandCode, void* commandData, Response* responseData) {
   switch(commandCode) {
      case SET_ANGLE:
         setAngle(*((char*)commandData));
         break;
      case GET_ANGLE:
         getAngle((char*) responseData);
         break;
      case GET_DESIRED_ANGLE:
         getDesiredAngle((char*) responseData);
         break;
      case CHANGE_PID:
         changePID(((char*)commandData)[0], ((char*)commandData)[1], ((char*)commandData)[2]);
         break;
      case SET_LIMITS:
         setLimits(((char*)commandData)[0], ((char*)commandData)[1]);
         break;
   }
   //return success for now
   return 1;
}

char processFNRCommand(char commandCode, void* commandData, Response* responseData) {
	responseData->size = 0;	
   switch(commandCode) {
      case SET_FNR:
         setFNR(*((char*)commandData));
         break;
      case GET_FNR:
         getFNR((char*) responseData);
         break;
   }
   return 1;
}

char processBrakeCommand(char commandCode, void* commandData, Response* responseData) {
   switch(commandCode) {
      case SET_BRAKE:
	 setBrake(*((char*)commandData));
	 break;
      case GET_BRAKE:
	 getBrake((char*) responseData);
	 break; 
   }
   return 1;
}

char processBatteryCommand(char commandCode, void* commandData, Response* responseData) {
   switch(commandCode) {
      case GET_BATTERY_VOLTAGE:
         getBatteryVoltage((char*) responseData);
         break;
      case GET_STEERING_VOLTAGE:
         getSteeringVoltage((char*) responseData);
         break;
   }
   return 1;
}

char processLightCommand(char commandCode, void* commandData, Response* responseData) {
	responseData->size = 0;
   switch(commandCode) {
   case SET_LIGHT:
	 	setLight(*((char*)commandData));
      break;
   }
   return 1;
}



//Function that will take in a command (as char array) and process it into a
//correct response to be stored into response
char processCommand(Command *command, Response *response) {
	response->commandBack = command->cmd;
   switch(command->groupID) {
      case ULTRASONIC_GROUP:
         processUltrasonicCommand(command->cmd, command->payload, response);
         break;
      case SPEED_GROUP:
			processSpeedCommand(command->cmd,command->payload,response);
         break;
      case STEERING_GROUP:
         processSteeringCommand(command->cmd,command->payload,response);
         break;
      case FNR_GROUP:
			processFNRCommand(command->cmd,command->payload,response);
         break;
      case BRAKES_GROUP:
         /*do brakes things*/
         break;
      case BATTERY_GROUP:
         processBatteryCommand(command->cmd,command->payload,response);
         break;
      case LIGHTS_GROUP:
	      processLightCommand(command->cmd,command->payload,response);
         break;
      case ERROR_GROUP:
         /*do error things*/
         break;
   }
   //return a dummy success for now
   return 1;
}
