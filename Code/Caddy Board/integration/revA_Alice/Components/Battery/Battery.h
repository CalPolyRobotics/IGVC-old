
//battery controller functions

void initializeBattery(void);

//Gets voltage from 36V source
char getBatteryVoltage(char *sensorResponse);

//Gets voltage from 12V source
char getSteeringVoltage(char *sensorResponse);
