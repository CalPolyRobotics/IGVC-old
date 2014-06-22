#ifndef __SPI_H__
#define __SPI_H__

void initializeSPI(void);

void SPIsendByte(unsigned char byte);
void SPIsendShort(unsigned short data);

#endif
