#ifndef __ROBOTSELECTINIT_H
#define __ROBOTSELECTINIT_H
#include "sys.h"
#include "system.h"

//Parameter structure of robot
//机器人参数结构体
typedef struct  
{
  float WheelSpacing;      //Wheelspacing, 4wd_Car is half wheelspacing //轮距 四驱车为半轮距
  float AxleSpacing;       //Axlespacing, 4wd_Car is half axlespacing //轴距 四驱车为半轴距	
  int GearRatio;           //Motor_gear_ratio //电机减速比
  int EncoderAccuracy;     //Number_of_encoder_lines //编码器精度(编码器线数)
  float WheelDiameter;     //Diameter of driving wheel //主动轮直径	
  float OmniTurnRadiaus;   //Rotation radius of omnidirectional trolley //全向轮小车旋转半径
}Robot_Parament_InitTypeDef;


//half wheelspacing //半轮距
#define SENIOR_4WD_BS_wheelspacing   0.176 
//#define SENIOR_4WD_DL_wheelspacing   0.247 
#define SENIOR_4WD_DL_wheelspacing   0.230
#define TOP_4WD_BS_wheelspacing      0.311
#define TOP_4WD_DL_wheelspacing      0.295
#define FlagShip_4WD_BS_wheelspacing 0.286
//#define FlagShip_4WD_DL_wheelspacing 0.298  原淘宝参数
#define FlagShip_4WD_DL_wheelspacing 0.24

//half axlespacing //半轴距
//#define SENIOR_4WD_BS_axlespacing   0.156
#define SENIOR_4WD_BS_axlespacing   0.150
//#define SENIOR_4WD_DL_axlespacing   0.214 
#define SENIOR_4WD_DL_axlespacing   0.20 
#define TOP_4WD_BS_axlespacing      0.308
#define TOP_4WD_DL_axlespacing      0.201
#define FlagShip_4WD_BS_axlespacing 0.167
//#define FlagShip_4WD_DL_axlespacing 0.200   原淘宝参数
#define FlagShip_4WD_DL_axlespacing 0.14

//Motor_gear_ratio
//电机减速比
#define   MD36N_5_18  5.18
#define   MD36N_27    27
#define   MD36N_51    51
#define   MD36N_71    71
#define   MD60N_18    18
#define   MD60N_47    47

//Number_of_encoder_lines
//编码器精度
#define		Photoelectric_500 500
#define	  Hall_13           13

//4WD wheel tire diameter series
//四驱车轮胎直径
#define		_4WD_225  0.225f
#define		_4WD_250  0.250f
#define   _4WD_152  0.152f

 
//Omni wheel tire diameter series
//轮径全向轮直径系列
#define	  FullDirecion_75  0.075
#define	  FullDirecion_127 0.127
#define	  FullDirecion_152 0.152
#define	  FullDirecion_203 0.203
#define	  FullDirecion_217 0.217

//Rotation radius of omnidirectional trolley
//全向轮小车旋转半径
#define   Omni_Turn_Radiaus_164 0.164
#define   Omni_Turn_Radiaus_180 0.160 //修正为160
#define   Omni_Turn_Radiaus_290 0.280 //修正为280

//The encoder octave depends on the encoder initialization Settings
//编码器倍频数，取决于编码器初始化设置
#define   EncoderMultiples 4
//Encoder data reading frequency
//编码器数据读取频率
#define CONTROL_FREQUENCY 100

//#define PI 3.1415f  //PI //圆周率

void Robot_Select(void);
#if _4WD
void Robot_Init(float wheelspacing, float axlespacing, int gearratio, int Accuracy, float tyre_diameter);
#elif Omni
void Robot_Init(float omni_turn_radiaus, int gearratio, int Accuracy, float tyre_diameter);
#endif

#endif
