/*
 FreeRTOS V6.1.0
 
 This is a basic RTOS program. It turns on the LEDs.
 Nothing too exciting.
 
 */

#include <stdint.h>
#include <avr/io.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "FreeRTOS.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include "task.h"
#include "usart.h"
#include "Components/Sonar/Sonar.h"
#include "queue.h"
#include "spi.h"
#include "Components/Speed/Speed.h"

void vTaskFunction_1(void *pvParameters);
void vTaskFunction_2(void *pvParameters);
void vTaskFunction_3(void *pvParameters);
void vTaskPot(void *pvParameters);
void vIO_init(void);
void vApplicationTickHook();
void printNum(unsigned char i);
void printHex(int i);

int count = 0;

int sonarTime;

void vApplicationTickHook()
{
    count++;
}

void vApplicationStackOverflowHook(){
	return;
}
/*-----------------------------------------------------------*/

int main( void )
{
    
    //- wimpy variable defs
	uint8_t val[2] = {0x3F, 0xFE};
    uint8_t *val0, *val1;
    
	//- avoid pesky warnings...
	val0 = val + 0;
	val1 = val + 1;
    
	DDRD = 0xFF;
	DDRE = 0xFF;
	DDRB = 0xFF; 
	DDRK = 0;

	PORTD = 0;
	PORTE = 0;
	PORTK = 2;

    //- init IO with goodness
	vIO_init();

	//- Create a 
	xTaskCreate( (pdTASK_CODE) vTaskFunction_1, (signed char *) "T0", configMINIMAL_STACK_SIZE+1000,
                (void *) val1, 1, NULL );
   /*xTaskCreate( (pdTASK_CODE) vTaskFunction_2, (signed char *) "T0", configMINIMAL_STACK_SIZE+1000,
                (void *) val1, 1, NULL );
   xTaskCreate( (pdTASK_CODE) vTaskFunction_3, (signed char *) "T0", configMINIMAL_STACK_SIZE+1000,
                (void *) val1, 1, NULL );
	xTaskCreate( (pdTASK_CODE) vTaskPot, (signed char *) "T0", configMINIMAL_STACK_SIZE+1000,
                (void *) val1, 1, NULL );*/

 
   xTaskCreate( (pdTASK_CODE) vTaskSonar, (signed char *) "T1", configMINIMAL_STACK_SIZE+1000,
                (void *) val1, 1, NULL );

   xTaskCreate( (pdTASK_CODE) vTaskUSARTWrite, (signed char *) "T2", configMINIMAL_STACK_SIZE+1000,
   				(void *) val1, 1, NULL);

   xTaskCreate( (pdTASK_CODE) vTaskUSARTRead, (signed char *) "T3", configMINIMAL_STACK_SIZE+1000,
   				(void *) val1, 1, NULL);

//   xTaskCreate( (pdTASK_CODE) vTaskUSARTLog, (signed char *) "T4", configMINIMAL_STACK_SIZE+1000,
//   				(void *) val1, 1, NULL);
    
    //- kick off the scheduler
	vTaskStartScheduler();
    
	return 0;
}
/*-----------------------------------------------------------*/

void printHex(int i){
	char hex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

	USART_Write(hex[(i&0xF000) >> 12]);
	USART_Write(hex[(i&0xF00) >> 8]);
	USART_Write(hex[(i&0xF0) >> 4]);
	USART_Write(hex[i&0xF]);

}

void printNum(unsigned char i){
    
    char str[10];
    memset(str,0,10);
    itoa(i,str,10);
    char * irr = str;
    while(*irr){
        USART_AddToQueue((unsigned char )*irr);
        irr++;
    }
    
}

ISR(TIMER5_OVF_vect){

	PORTB ^= 0xFF;
	TCNT3L = 0;
	TCNT3H = 0;

}

unsigned int getTimerCount2(){

	//volatile char timerLow = TCNT3L;

	return TCNT0;

}

void vTaskFunction_1(void *pvParameters)
{	
   USART_Init(9600, 16000000);
	for(;;);
	for(;;){
		PORTL = 0x10;
		vTaskDelay(200);
		PORTL = 0x20;
		vTaskDelay(200);
		PORTL = 0x40;
		vTaskDelay(200);
		PORTL = 0x80;
		vTaskDelay(200);
	}
}

void vTaskFunction_2(void *pvParameters){
	DDRA = ~(1 << 3);
	PORTA |= 3;
	for(;;){
		PORTA &= ~3;
		vTaskDelay(200); 
		PORTA &= ~3;
		PORTA |= 1;
		vTaskDelay(200); 
		PORTA &= ~3;
		PORTA |= 2;
		vTaskDelay(200);
	}	
}

void vTaskFunction_3(void *pvParameters){

	for(;;){
		if(PINA & 0x08){
			PORTA |= 0x80;
		} else {
			PORTA &= ~0x80;
		}
	}

}

void vTaskPot(void *pvParameters){
	initializeSPI();
	int a = 0;
	initSpeedController();
	/*for(;;){
		setPot(a);
		vTaskDelay(80);
		a++;
	}*/
	for(;;){
		setPot(1);
		vTaskDelay(500);
		setPot(0x40);
		vTaskDelay(500);
		setPot(0x7F);
		vTaskDelay(500);
		setPot(0x40);
		vTaskDelay(500);
	}
}


void vIO_init(void)
{
    //- set PortB as output
	DDRB = 0xFF; 
    PORTB = 0; 
}


