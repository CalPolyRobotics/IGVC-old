#ifndef __ADC_H__
#define __ADC_H__

int getSonarResult();

void initADC();
void ADCStart();

void vTaskADC(void *parameters);

#endif
