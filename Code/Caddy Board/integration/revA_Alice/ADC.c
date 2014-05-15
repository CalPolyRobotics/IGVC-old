#include <avr/io.h>
#include <avr/interrupt.h>

#include "ADC.h"
#include "FreeRTOS.h"
#include "semphr.h"

xSemaphoreHandle* adcSemaphore;

static int ADCResult;
static int last4[4];

int getSonarResult(){
	return ADCResult;
}

void addResult(int result){
	int i;
	for(i = 0;i < 3;i++){
		last4[i] = last4[i + 1];
	}
	last4[3] = result;
	ADCResult = result;
	ADCResult = result;
	ADCResult = (last4[0] + last4[1] + last4[2] + last4[3]) >> 2;
}
		
	
//Initialize ADC registers
void initADC(){
	ADCSRA = _BV(ADEN);
	ADMUX = _BV(REFS0)|(1);

	ADCSRB = (1 << MUX5);
	//DIDR2 = 0xFF;
}

//If the ADC isn't running, start it
void ADCStart() {
	if(!(ADCSRA & _BV(ADSC))){
		ADCSRA |= _BV(ADIE);
		ADCSRA |= _BV(ADSC);
	}
}

//Read the finished value of the ADC and store it
ISR(ADC_vect) {
	int result = ADCL;
	result |= (ADCH << 8);
	
	addResult(result);
	
	ADCSRA &= ~(_BV(ADIE));

	xSemaphoreGiveFromISR(adcSemaphore,0);
}

void vTaskADC(void *parameters){
	initADC();

	vSemaphoreCreateBinary(adcSemaphore);

	while(1){
		ADCStart();
		xSemaphoreTake(adcSemaphore,portMAX_DELAY);
	}
}
