#ifndef __BRUSH_H
#define __BRUSH_H
#include "sys.h"
#include "system.h"

#define BRUSH_TASK_PRIO		3     //Task priority //任务优先级
#define BRUSH_STK_SIZE 		128   //Task stack size //任务堆栈大小




#define BRUSH_PORT GPIOE
#define BRUSH_PIN1 GPIO_Pin_10
#define BRUSH_PIN2 GPIO_Pin_12





void Brush_Init(void);
void Brush_work(int i);
void brush_task(void *pvParameters);
void pidForward(int i, int exp, int kp);
extern int isPid;
extern int brushMode;
extern int zitai;
extern int expForward;
#endif
