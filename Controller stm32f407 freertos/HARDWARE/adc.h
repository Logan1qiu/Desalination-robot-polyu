#ifndef __ADC_H
#define __ADC_H	
#include "sys.h"
#include "system.h"
#define Battery_Ch    8 //Battery voltage, ADC channel 8 //µç³ØµçÑ¹£¬ADCÍ¨µ
#define WEITIAO 11
#define CAR_MODE_ADC 12  //Potentiometer, ADC channel 12 //µçÎ»Æ÷£¬ADCÍ¨µÀ12
#define Potentiometer  13
void Adc_Init(void);
u16 Get_Adc(u8 ch);
float Get_battery_volt(void) ;
u16 Get_adc_Average(u8 chn, u8 times);
extern float Voltage,Voltage_Count,Voltage_All; 	
#endif 


