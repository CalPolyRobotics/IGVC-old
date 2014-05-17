#ifndef __ADC_H__
#define __ADC_H__

#define ADC_OPT_PRECISION_HIGH		0	
#define ADC_OPT_PRECISION_MED_HIGH	1
#define ADC_OPT_PRECISION_MED			2
#define ADC_OPT_PRECISION_LOW			3

#define ADC_OPT_PRECISION_MASK		0x03

typedef void (*ADCHandler)(int,void*);

void vTaskADC(void *parameters);

void addADCDevice(int port,int options,ADCHandler handler,void* parameters);


#endif
