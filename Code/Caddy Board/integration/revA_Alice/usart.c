/***************************
*
* Filename: usart.cpp
*
* Description: Provides print methods for various
*  datatypes using USART.
*
* Authors: Doug Gallatin and Jason Schray
* Edited by: Tim Peters & James Humphrey
*
***************************/

#include "FreeRTOS.h"
#include "semphr.h" 
#include "queue.h"
#include "protocol.h"

#include <stdlib.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "usart.h"

#define NACK_BYTE 0 
#define ACK_BYTE	128

xQueueHandle USART_WriteQueue;
xQueueHandle USART_ReadQueue;
xQueueHandle USART_WriteQueueLog;



/************************************
* Procedure: usart_init
*  
* Description: Initializes the USART module with 
*  the specified baud rate and clk speed.
*
* Param buadin: The desired Baud rate.
* Param clk_seedin: The clk speed of the ATmega328p
************************************/
void USART_Init(uint16_t baudin, uint32_t clk_speedin) {
    USART_WriteQueue = xQueueCreate(64,sizeof(uint8_t));
    USART_ReadQueue = xQueueCreate(8,sizeof(uint8_t));

    //uint32_t ubrr = clk_speedin/(16UL)/baudin-1;
    //UBRR1H = (unsigned char)(ubrr>>8) ;// & 0x7F;
    //UBRR1L = (unsigned char)ubrr;
    
    UBRR0H = 0; //115200
    UBRR0L = 8;

    /* Enable receiver and transmitter */
    UCSR0B = (1<<RXEN0)|(1<<TXEN0);//|(1<<RXCIE1);
    /* Set frame format: 8data, 1stop bit */
    UCSR0C = (1<<UCSZ01)|(1<<UCSZ00);
	 // clear U2X0 for Synchronous operation
    UCSR0A &= ~(1<<U2X0);

    //UCSR0B |= (1<<UDRIE0);

    //PORTB = 0xFF;

    //UART0 Logging

    /*USART_WriteQueueLog = xQueueCreate(32,sizeof(uint8_t));

    ubrr = clk_speedin/(16UL)/baudin-1;
    UBRR0H = (unsigned char)(ubrr>>8) ;// & 0x7F;
    UBRR0L = (unsigned char)ubrr;
    
    //UBRR0H = 0; //115200
    //UBRR0L = 8;

    /* Enable receiver and transmitter */
    //UCSR0B = (1<<RXEN0)|(1<<TXEN0);
    /* Set frame format: 8data, 1stop bit */
    //UCSR0C = (1<<UCSZ01)|(1<<UCSZ00);
    // clear U2X0 for Synchronous operation
    //UCSR0A &= ~(1<<U2X0);*/

}

/*the send function will put 8bits on the trans line. */
void USART_Write(uint8_t data) {
		/* Wait for empty transmit buffer */
		while ( !( UCSR0A & (1<<UDRE0)) )
		;
		/* Put data into buffer, sends the data */
		UDR0 = data;
}

/*the send function will put 8bits on the trans line. */
void USART_Write_Unprotected(uint8_t data) {
	/* Wait for empty transmit buffer */
	while ( !( UCSR0A & (1<<UDRE0)) )
	;
	/* Put data into buffer, sends the data */
	UDR0 = data;
}

/* the receive data function. Note that this a blocking call
Therefore you may not get control back after this is called 
until a much later time. It may be helpful to use the 
istheredata() function to check before calling this function
        @return 8bit data packet from sender
*/
uint8_t USART_Read(void) {
    /* Wait for data to be received */
    while ( !(UCSR2A & (1<<RXC2)) )
        ;
    /* Get and return received data from buffer */
    return UDR2;
}


ISR(USART1_RX_vect){
    uint8_t data;
    data = UDR1;

    //while(!(UCSR1A & (1<<UDRE1)));
    //UDR1 = data;
    

  //  USART_AddToQueue(data);
    //xQueueSendToBackFromISR(USART_ReadQueue,&data,NULL);
}

void USART_AddToQueue(uint8_t data){
    
    xQueueSendToBack(USART_WriteQueue,&data,portMAX_DELAY);

}

void USART_TransmitString(char* str){
    while(*str) {
        USART_AddToQueue(*str);
        str++;
    }
}

void vTaskUSARTWrite(void *pvParameters){
    uint8_t data;
    while(1){
    xQueueReceive(USART_WriteQueue,&data,portMAX_DELAY);

        while(!(UCSR1A & (1<<UDRE1)));
        UDR1 = data;

    }
}

void USART_LogChar(uint8_t data){
    xQueueSendToBack(USART_WriteQueueLog,&data,portMAX_DELAY);
}

void USART_LogString(char* str){
    while(*str){
        USART_LogChar(*str);
        str++;
    }
}

void vTaskUSARTLog(void *pvParameters){
    uint8_t data;
    while(1){
        xQueueReceive(USART_WriteQueueLog,&data,portMAX_DELAY);

        while(!(UCSR0A & (1<<UDRE0)));
        UDR0 = data;

    }

}

uint8_t USART_GetChar(){
    uint8_t data;
    if(xQueueReceive(USART_ReadQueue,&data,1) == pdTRUE){
        //USART_AddToQueue('~');
        return data;
    } else {
        return 255;
    }
}

void delay(int a){
	int i;
	for(i = 0;i < a;i++);
}

void sendACK(){
    USART_Write(ACK_BYTE);
}

void sendNACK(){
    USART_Write(NACK_BYTE);
}

int recievePayload(int size,unsigned char *buffer){

	int bytesRecieved = 0;
	int numTries = 0;
	const int maxNumTries = 3;
	unsigned char data;
	int timeout;

	while(numTries < maxNumTries){
		while(bytesRecieved < size){
			timeout = 50;
			while ( !(UCSR0A & (1<<RXC0)) ){
  				timeout--;
     			if(timeout == 0){
					return -1;
     			}
     			vTaskDelay(1);
   		}
			data = UDR0;
			buffer[bytesRecieved] = data;
			bytesRecieved++;
		}
		
		timeout = 50;
		while ( !(UCSR0A & (1<<RXC0)) ){
  			timeout--;
     		if(timeout == 0){
				return -1;
     		}
     		vTaskDelay(1);
   	}	
		data = UDR0;
		if(data != calcChecksum(buffer,size)){
			sendNACK();
			numTries++;
		} else {
			sendACK();
			return 0;
		}
	}
	return -1;
}

void vTaskUSARTRead(void *pvParameters){

    char bytesRecieved;
    uint8_t rxData;
    uint8_t data;
    uint8_t buffer[16];
    unsigned char size;
    char groupID;
    char cmd;
    unsigned int timeout;

	DDRB = 0xFF;

    Command command;
    Response response;
    while(1){
        bytesRecieved = 0;
        int timeout = 30;
        while(bytesRecieved < 4){
            
            while ( !(UCSR0A & (1<<RXC0)) ){
                timeout--;
                if(timeout == 0){
                    bytesRecieved = 0;
                    timeout = 30;
                }
                vTaskDelay(1);
            }
            data = UDR0;
            buffer[bytesRecieved] = data;
            bytesRecieved++;        
        }

        if(calcChecksum(buffer,3) != buffer[3]){
            sendNACK();
            bytesRecieved = 0;
        } else {
            sendACK();
            bytesRecieved = 0;
				command.groupID = buffer[0];
				command.cmd = buffer[1];
				size = buffer[2];

				if(size > 0){ //No dynamic memory allocations. 16 is the size of the buffer
					if(recievePayload(size,command.payload) == -1){
						continue;	//Restart comms
					}
				}
				
 
            processCommand(&command,&response);
            sendResponse(&response);

        }

    }

}

int sendResponse(Response* response){
    char checksumBuffer[2];
    int i;
    int timeout = 50;
    while(1){
        	USART_Write(response->commandBack);
			vTaskDelay(1);
        	USART_Write(response->size);
			vTaskDelay(1);
        	checksumBuffer[0] = response->commandBack;
        	checksumBuffer[1] = response->size;
        	USART_Write(calcChecksum(checksumBuffer,2));
        	switch(waitForAck()){
        	case 1:
           	goto outOfWhile;
        	case -1:
           	return -1;
        	case 0:
           	timeout--;
           	if(!timeout){
              	return -1;
           	}
        	}
    }

    outOfWhile:


    for(i=0;i<response->size;i++){
        USART_Write(response->payload[i]);
			vTaskDelay(1);
		  //USART_AddToQueue(0x30 | (i + 2));
        //USART_AddToQueue()
    }
    USART_Write(calcChecksum((uint8_t*)response->payload,response->size));
	 

    waitForAck();

    return 0;

}

char waitForAck(){
    int timeout = 5000;
    while ( !(UCSR2A & (1<<RXC2)) ){
        timeout--;
        if(!timeout){
            return -1;
        }
    }
    if(UDR2 == ACK_BYTE){
        return 1;
    } else {
        return 0;
    }
}

uint8_t calcChecksum(uint8_t* buffer,uint8_t size){
    uint8_t checksum = 0;
    for(int i = 0; i < size; i++) {
        checksum += *(buffer++);
    }
    return checksum;
}
