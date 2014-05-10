
//Speed Sensor group

void initSpeedController();
void setPot(int value);
void incrementPot();
void decrementPot();

//get the speed of the vehicle
char getSpeed(char* sensorResponse);

//will set just the speed of the wheels of the car
char setSpeed(char speedTarget);
