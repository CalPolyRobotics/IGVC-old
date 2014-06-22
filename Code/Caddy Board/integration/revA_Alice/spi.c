#include <avr/io.h>
#include "FreeRTOS.h"
#include "task.h"
#include "spi.h"

static const int mosi_pin = 2;
static const int miso_pin = 3;
static const int sck_pin = 1;
static const int ss_pin = 0; 

void initializeSPI(){
	SPCR = (1 << SPE)|(1 << MSTR)|(1 << SPR1)|(1 << SPR0);
	DDRB |= (1 << ss_pin)|(1 << sck_pin)|(1 << mosi_pin);
	DDRB &= ~(1 << miso_pin);
	PORTB |= 1 << ss_pin;
	PORTB &= ~(1 << sck_pin);
}

void SPIsendByte(unsigned char byte){
	PORTB &= ~(1 << ss_pin);
	vTaskDelay(1);
	SPDR = byte;
	while((SPSR & (1 << SPIF)) == 0)
	;
	vTaskDelay(1);
	PORTB |= (1 << ss_pin);

}

void SPIsendShort(unsigned short data){
	PORTB &= ~(1 << ss_pin);
	vTaskDelay(2);
	SPDR = (data >> 8);
	while((SPSR & (1 << SPIF)) == 0)
	;
	SPDR = data & 0xFF;
	while((SPSR & (1 << SPIF)) == 0)
	;
	vTaskDelay(2);
	PORTB |= (1 << ss_pin);
}
