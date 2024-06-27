#include "brush.h"

int brushMode = 0;
int zitai = 0;
int isPid = 0;
int expForward = 0;

void Brush_Init(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
	
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE, ENABLE);//使能GPIOB时钟
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_10 | GPIO_Pin_12;//LED对应IO口
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;//普通输出模式
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;//推挽输出
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;//100MHz
  //GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;//上拉
  GPIO_Init(GPIOE, &GPIO_InitStructure);//初始化GPIO
	GPIO_ResetBits(GPIOE,GPIO_Pin_10);
	GPIO_ResetBits(GPIOE,GPIO_Pin_12);
}

void Brush_work(int i){
	switch(i){
		case 0:
			GPIO_ResetBits(GPIOE,GPIO_Pin_12);
	    GPIO_ResetBits(GPIOE,GPIO_Pin_10);
		  break;
		case 1:
			GPIO_SetBits(GPIOE,GPIO_Pin_10);
	    GPIO_ResetBits(GPIOE,GPIO_Pin_12);
		  break;
		case 2:
			GPIO_SetBits(GPIOE,GPIO_Pin_12);
	    GPIO_ResetBits(GPIOE,GPIO_Pin_10);
		  break;
		default:
			break;
	}
}


void brush_task(void *pvParameters)
{
	u32 lastWakeTime = getSysTickCnt();
    while(1)
    {
			vTaskDelayUntil(&lastWakeTime, F2T(RATE_100_HZ));
			Brush_work(brushMode);
			//zitai += gyro[2]/100;
      //pidForward(isPid, 0, 1);			
    }
}  

void pidForward(int i, int exp, int kp){
	if(i){
		float error = exp - zitai;
		Move_Z = kp * error /10000;
	}
}
