
//Speed Sensor group

void initSpeedController(void);
void setPot(int value);
void incrementPot(void);
void decrementPot(void);

//get the speed of the vehicle
char getSpeed(unsigned char* sensorResponse);

//will set just the speed of the wheels of the car
char setSpeed(unsigned char speedTarget);
