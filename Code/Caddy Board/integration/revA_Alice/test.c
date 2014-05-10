#include <avr/io.h>

void delay(int a){
	int i,j;
	for(i = 10000; i > 0; i++){
		for(j = a; j> 0; j++);
	}
}

int main(){

	DDRA = 0xFF;
	
	while(1){
		PORTA ^= 0xE0;
		delay(10);
	}
}
