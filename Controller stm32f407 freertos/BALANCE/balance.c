#include "balance.h"

//Whether the robot model is incorrectly marked
//机器人型号是否错误标志位
int robot_mode_check_flag=0;
int A=1,B=1,C=1,DD=1; //Used for testing //用于测试
int Time_count=0; //Time variable //计时变量
u8 command_lost_count=0;//串口、CAN控制命令丢失时间计数，丢失一秒后停止控制
/**************************************************************************
Function: The inverse kinematics solution is used to calculate the target speed of each wheel according to the target speed of three axes
Input   : X and Y, Z axis direction of the target movement speed
Output  : none
函数功能：运动学逆解，根据三轴目标速度计算各车轮目标转速
入口参数：X和Y、Z轴方向的目标运动速度
返回  值：无
**************************************************************************/
void Drive_Motor(float Vx,float Vy,float Vz)
{
		static float amplitude=3.5; //Wheel target speed limit //车轮目标速度限幅
	
		Smooth_control(Vx,Vy,Vz); //Smoothing the input speed //对输入速度进行平滑处理

	  //Get the smoothed data 
		//获取平滑处理后的数据	
	  Vx=smooth_control.VX;
    Vy=smooth_control.VY;
    Vz=smooth_control.VZ;
	
	  #if _4WD //4WD wheel car //四驱小车
    
	  //Inverse kinematics //运动学逆解
   	MOTOR_A.Target = +Vy+Vx-Vz*(Wheel_axlespacing+Wheel_spacing);//小车前后轴的轴距+主动轮轮距
    MOTOR_B.Target = -Vy+Vx-Vz*(Wheel_axlespacing+Wheel_spacing);
    MOTOR_C.Target = +Vy+Vx+Vz*(Wheel_axlespacing+Wheel_spacing);
    MOTOR_D.Target = -Vy+Vx+Vz*(Wheel_axlespacing+Wheel_spacing);
	
	  //Wheel (motor) target speed limit //车轮(电机)目标速度限幅
		MOTOR_A.Target=target_limit_float(MOTOR_A.Target,-amplitude,amplitude); 
	  MOTOR_B.Target=target_limit_float(MOTOR_B.Target,-amplitude,amplitude);
		MOTOR_C.Target=target_limit_float(MOTOR_C.Target,-amplitude,amplitude);
	  MOTOR_D.Target=target_limit_float(MOTOR_D.Target,-amplitude,amplitude);
		
		#elif Omni //Omni wheel Car //全向轮车
		
		//Inverse kinematics //运动学逆解
		MOTOR_A.Target =  Vy + Omni_turn_radiaus*Vz;
    MOTOR_B.Target = -X_PARAMETER*Vx - Y_PARAMETER*Vy + Omni_turn_radiaus*Vz;
    MOTOR_C.Target = +X_PARAMETER*Vx - Y_PARAMETER*Vy + Omni_turn_radiaus*Vz;
	
	  //Wheel (motor) target speed limit //车轮(电机)目标速度限幅
		MOTOR_A.Target=target_limit_float(MOTOR_A.Target,-amplitude,amplitude);
	  MOTOR_B.Target=target_limit_float(MOTOR_B.Target,-amplitude,amplitude);
		MOTOR_C.Target=target_limit_float(MOTOR_C.Target,-amplitude,amplitude);
		MOTOR_D.Target=0;	//Out of use //没有使用到
		
		#endif
}
/**************************************************************************
Function: FreerTOS task, core motion control task
Input   : none
Output  : none
函数功能：FreeRTOS任务，核心运动控制任务
入口参数：无
返回  值：无
**************************************************************************/
void Balance_task(void *pvParameters)
{ 
	  u32 lastWakeTime = getSysTickCnt();
    while(1)
    {	
			// This task runs at a frequency of 100Hz (10ms control once)
			//此任务以100Hz的频率运行（10ms控制一次）
			vTaskDelayUntil(&lastWakeTime, F2T(RATE_100_HZ));
			
			//Time count is no longer needed after 30 seconds
			//时间计数，30秒后不再需要
			if(Time_count<3000)Time_count++;
			
			//Get the encoder data, that is, the real time wheel speed, 
			//and convert to transposition international units
			//获取编码器数据，即车轮实时速度，并转换位国际单位 
			Get_Velocity_Form_Encoder();
			
			
//                command_lost_count++;//串口、CAN控制命令丢失时间计数，丢失1秒后停止控制
//				if(command_lost_count>RATE_100_HZ&&APP_ON_Flag==0&&Remote_ON_Flag==0&&PS2_ON_Flag==0)
//					Move_X=0,Move_Y=0,Move_Z=0;
				if      (APP_ON_Flag)      Get_RC();         //Handle the APP remote commands //处理APP遥控命令
				else if (Remote_ON_Flag)   Remote_Control(); //Handle model aircraft remote commands //处理航模遥控命令
				else if (PS2_ON_Flag)      PS2_control();    //Handle PS2 controller commands //处理PS2手柄控制命令
				
				//CAN, Usart 1, Usart 3 control can directly get the 2 axis target speed, 
				//without additional processing
				//CAN、串口1、串口3(ROS)控制直接得到2轴目标速度，无须额外处理
				else                      Drive_Motor(Move_X, Move_Y, Move_Z);  //CAN、串口1、串口3(ROS)控制
			
				Key();
				//等陀螺仪初始化完成后,检测机器人型号是否选择错误
				//When the gyroscope is initialized, check whether the robot model is selected incorrectly
				if(CONTROL_DELAY<Time_count && Time_count<CONTROL_DELAY+200) //Advance 1 seconds to test //前进1秒进行测试
				{
					Drive_Motor(0.02,0, 0); 
					robot_mode_check(); //Detection function //检测函数
				}
				else if(CONTROL_DELAY+200<Time_count && Time_count<CONTROL_DELAY+210) Drive_Motor(0, 0,0); //The stop forward control is completed //检测完成停止前进控制
				
				//If there is no abnormity in the battery voltage, and the enable switch is in the ON position,
				//and the software failure flag is 0, or the model detection marker is 0
				//如果电池电压不存在异常，而且使能开关在ON档位，而且软件失能标志位为0，或者型号检测标志位为0
				if(Turn_Off(Voltage)==0&&robot_mode_check_flag==0)
				{ 		
					  //Speed closed-loop control to calculate the PWM value of each motor, 
				 //PWM represents the actual wheel speed					 
				 //速度闭环控制计算各电机PWM值，PWM代表车轮实际转速				 
				 MOTOR_A.Motor_Pwm=Incremental_PI_A(MOTOR_A.Encoder, MOTOR_A.Target);
			 	 MOTOR_B.Motor_Pwm=Incremental_PI_B(MOTOR_B.Encoder, MOTOR_B.Target);
				 MOTOR_C.Motor_Pwm=Incremental_PI_C(MOTOR_C.Encoder, MOTOR_C.Target);
				 MOTOR_D.Motor_Pwm=Incremental_PI_D(MOTOR_D.Encoder, MOTOR_D.Target);
				 
					#if _4WD
					//Set different PWM control polarity according to different car models
					//根据不同小车型号设置不同的PWM控制极性
				 
					if (Car_Mode==0||Car_Mode==1||Car_Mode==2||Car_Mode==3)  
					Set_Pwm( MOTOR_A.Motor_Pwm, MOTOR_B.Motor_Pwm, MOTOR_C.Motor_Pwm, MOTOR_D.Motor_Pwm);  //MD36电机系列
					else                           
					Set_Pwm(-MOTOR_A.Motor_Pwm,-MOTOR_B.Motor_Pwm,-MOTOR_C.Motor_Pwm,-MOTOR_D.Motor_Pwm);  //MD60电机系列


				
				 #elif Omni
					//Set different PWM control polarity according to different car models
					//根据不同小车型号设置不同的PWM控制极性
					     if (Car_Mode==0)                           Set_Pwm(-MOTOR_A.Motor_Pwm,-MOTOR_B.Motor_Pwm, MOTOR_C.Motor_Pwm,0); //高配全向轮三角形极速      SENIOR_OMNI MD36N_5_18
          else if (Car_Mode==1||Car_Mode==2)                        Set_Pwm(-MOTOR_A.Motor_Pwm,-MOTOR_B.Motor_Pwm, MOTOR_C.Motor_Pwm,0); //高配全向轮圆形/三角形常规 SENIOR_OMNI MD36N_27
				 	else if (Car_Mode==3)	                          Set_Pwm(-MOTOR_A.Motor_Pwm,-MOTOR_B.Motor_Pwm, MOTOR_C.Motor_Pwm,0); //高配全向轮圆形重载        SENIOR_OMNI MD36N_51
	        else if (Car_Mode==4||Car_Mode==5||Car_Mode==6)	Set_Pwm( MOTOR_A.Motor_Pwm, MOTOR_B.Motor_Pwm,-MOTOR_C.Motor_Pwm,0); //顶配全向轮重载            TOP_OMNI    MD60N_*
				 #endif
			 }
			//If Turn_Off(Voltage) returns to 1, or the model detection marker is 1, the car is not allowed to move, and the PWM value is set to 0
			//如果Turn_Off(Voltage)返回值为1，或者型号检测标志位为1，不允许控制小车进行运动，PWM值设置为0
		   else	Set_Pwm(0,0,0,0);		
    }	
}
/**************************************************************************
Function: Assign a value to the PWM register to control wheel speed and direction
Input   : PWM
Output  : none
函数功能：赋值给PWM寄存器，控制车轮转速与方向
入口参数：PWM
返回  值：无
**************************************************************************/
void Set_Pwm(int motor_a,int motor_b,int motor_c,int motor_d)
{  
	  //Forward and reverse control of motor
	  //电机正反转控制
		if(motor_a>0){
			AIN1=0,		AIN2=1; 
		}			  
		else{
			AIN1=1,		AIN2=0;
		} 	            
    //Motor speed control 
	  //电机转速控制	
	 TIM_SetCompare4(TIM8,myabs(motor_a*A));
	
		if(motor_b>0)			BIN1=0,		BIN2=1;   
		else 	            BIN1=1,			BIN2=0;
	  //Motor speed control 
	  //电机转速控制
		TIM_SetCompare3(TIM8,myabs(motor_b*B));
	
	//Forward and reverse control of motor
	  //电机正反转控制
		if(motor_c>0)			CIN2=0,		CIN1=1;   
		else 	            CIN2=1,			CIN1=0;
    //Motor speed control 
	  //电机转速控制	
	 TIM_SetCompare2(TIM8,myabs(motor_c*C));
	
		if(motor_d>0)			DIN2=0,		DIN1=1;   
		else 	           DIN2=1,			DIN1=0;
	  //Motor speed control 
	  //电机转速控制
		TIM_SetCompare1(TIM8,myabs(motor_d*DD));
}

/**************************************************************************
Function: Limit PWM value
Input   : Value
Output  : none
函数功能：限制PWM值 
入口参数：幅值
返回  值：无
**************************************************************************/
void Limit_Pwm(int amplitude)
{	
	    MOTOR_A.Motor_Pwm=target_limit_float(MOTOR_A.Motor_Pwm,-amplitude,amplitude);
	    MOTOR_B.Motor_Pwm=target_limit_float(MOTOR_B.Motor_Pwm,-amplitude,amplitude);
		  MOTOR_C.Motor_Pwm=target_limit_float(MOTOR_C.Motor_Pwm,-amplitude,amplitude);
	    MOTOR_D.Motor_Pwm=target_limit_float(MOTOR_D.Motor_Pwm,-amplitude,amplitude);
}	    
/**************************************************************************
Function: Limiting function
Input   : Value
Output  : none
函数功能：限幅函数
入口参数：幅值
返回  值：无
**************************************************************************/
float target_limit_float(float insert,float low,float high)
{
    if (insert < low)
        return low;
    else if (insert > high)
        return high;
    else
        return insert;	
}
int target_limit_int(int insert,int low,int high)
{
    if (insert < low)
        return low;
    else if (insert > high)
        return high;
    else
        return insert;	
}
/**************************************************************************
Function: Check the battery voltage, enable switch status, software failure flag status
Input   : Voltage
Output  : Whether control is allowed, 1: not allowed, 0 allowed
函数功能：检查电池电压、使能开关状态、软件失能标志位状态
入口参数：电压
返回  值：是否允许控制，1：不允许，0允许
**************************************************************************/
u8 Turn_Off( int voltage)
{
		u8 temp;
	  //static int stop_count, enable_count;
		if(voltage<20||EN==0||Flag_Stop==1)
		{	                                                
			temp=1; 
			PWMA=0;
			PWMB=0;
			PWMC=0;
			PWMD=0;
			AIN1=0;AIN2=0;
			BIN1=0;BIN2=0;
			CIN1=0;CIN2=0;
			DIN1=0;DIN2=0;			
		}
		else
			temp=0;
		return temp;			
}
/**************************************************************************
Function: Calculate absolute value
Input   : long int
Output  : unsigned int
函数功能：求绝对值
入口参数：long int
返回  值：unsigned int
**************************************************************************/
u32 myabs(long int a)
{ 		   
	  u32 temp;
		if(a<0)  temp=-a;  
	  else temp=a;
	  return temp;
}
/**************************************************************************
Function: Floating-point data calculates the absolute value
Input   : float
Output  : The absolute value of the input number
函数功能：浮点型数据计算绝对值
入口参数：浮点数
返回  值：输入数的绝对值
**************************************************************************/
float float_abs(float insert)
{
	if(insert>=0) return insert;
	else return -insert;
}
/**************************************************************************
Function: Incremental PI controller
Input   : Encoder measured value (actual speed), target speed
Output  : Motor PWM
According to the incremental discrete PID formula
pwm+=Kp[e（k）-e(k-1)]+Ki*e(k)+Kd[e(k)-2e(k-1)+e(k-2)]
e(k) represents the current deviation
e(k-1) is the last deviation and so on
PWM stands for incremental output
In our speed control closed loop system, only PI control is used
pwm+=Kp[e（k）-e(k-1)]+Ki*e(k)

函数功能：增量式PI控制器
入口参数：编码器测量值(实际速度)，目标速度
返回  值：电机PWM
根据增量式离散PID公式 
pwm+=Kp[e（k）-e(k-1)]+Ki*e(k)+Kd[e(k)-2e(k-1)+e(k-2)]
e(k)代表本次偏差 
e(k-1)代表上一次的偏差  以此类推 
pwm代表增量输出
在我们的速度控制闭环系统里面，只使用PI控制
pwm+=Kp[e（k）-e(k-1)]+Ki*e(k)
**************************************************************************/
int Incremental_PI_A (float Encoder,float Target)
{
	 static float Bias,Pwm,Last_bias;
	 Bias=Target-Encoder; //Calculate the deviation //计算偏差
	 Pwm+=Velocity_KP*(Bias-Last_bias)+Velocity_KI*Bias; 
	 if(Pwm>16800)Pwm=16800;
	 if(Pwm<-16800)Pwm=-16800;
	 Last_bias=Bias; //Save the last deviation //保存上一次偏差 
	 return Pwm; 
}
int Incremental_PI_B (float Encoder,float Target)
{
	 static float Bias,Pwm,Last_bias;
	 Bias=Target-Encoder; //Calculate the deviation //计算偏差
	 Pwm+=Velocity_KP*(Bias-Last_bias)+Velocity_KI*Bias; 
	 if(Pwm>16800)Pwm=16800;
	 if(Pwm<-16800)Pwm=-16800;
	 Last_bias=Bias; //Save the last deviation //保存上一次偏差 
	 return Pwm; 
}
int Incremental_PI_C (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Last_bias;
	 Bias=Target-Encoder; //Calculate the deviation //计算偏差
	 Pwm+=Velocity_KP*(Bias-Last_bias)+Velocity_KI*Bias; 
	 if(Pwm>16800)Pwm=16800;
	 if(Pwm<-16800)Pwm=-16800;
	 Last_bias=Bias; //Save the last deviation //保存上一次偏差 
	 return Pwm;    
}
int Incremental_PI_D (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Last_bias;
	 Bias=Target-Encoder; //Calculate the deviation //计算偏差
	 Pwm+=Velocity_KP*(Bias-Last_bias)+Velocity_KI*Bias; 
	 if(Pwm>16800)Pwm=16800;
	 if(Pwm<-16800)Pwm=-16800;
	 Last_bias=Bias; //Save the last deviation //保存上一次偏差 
	 return Pwm;    
}

/**************************************************************************
Function: Processes the command sent by APP through usart 2
Input   : none
Output  : none
函数功能：对APP通过串口2发送过来的命令进行处理
入口参数：无
返回  值：无
**************************************************************************/
void Get_RC(void)
{
	switch(Flag_Direction) //Handle direction control commands //处理方向控制命令
	{ 
		case 1:      Move_X=RC_Velocity;  	 Move_Z=0;        break;
		case 2:      Move_X=RC_Velocity;  	 Move_Z=-PI/4;  	break;
		case 3:      Move_X=0;      				 Move_Z=-PI/4;  	break;
		case 4:      Move_X=-RC_Velocity;  	 Move_Z=-PI/4;  	break;
		case 5:      Move_X=-RC_Velocity;  	 Move_Z=0;  	    break;
		case 6:      Move_X=-RC_Velocity;  	 Move_Z=PI/4;     break;
		case 7:      Move_X=0;     	 			 	 Move_Z=PI/4;  	  break;
		case 8:      Move_X=RC_Velocity; 	 	 Move_Z=PI/4;  	  break; 
		default:     Move_X=0;               Move_Z=0;  	    break;
	}

	if     (Flag_Left ==1)  Move_Z= PI/2*(RC_Velocity/500); //left rotation  //左自转  
	else if(Flag_Right==1)  Move_Z=-PI/2*(RC_Velocity/500); //right rotation //右自转
	
	#if _4WD
  if(Move_X<0) Move_Z = -Move_Z;
	#endif
	
	//Unit conversion, mm/s -> m/s
  //单位转换，mm/s -> m/s	
	Move_X=Move_X/1000;       Move_Y=Move_Y/1000;         Move_Z=Move_Z;
	
  //Control target value is obtained and kinematics analysis is performed
	//得到控制目标值，进行运动学分析
	Drive_Motor(Move_X,Move_Y,Move_Z);

}
/**************************************************************************
Function: Handle PS2 controller control commands
Input   : none
Output  : none
函数功能：对PS2手柄控制命令进行处理
入口参数：无
返回  值：无
**************************************************************************/
void PS2_control(void)
{
   	int LX,LY,RY;
		int Threshold=20; //Threshold to ignore small movements of the joystick //阈值，忽略摇杆小幅度动作
			
	  //128 is the median.The definition of X and Y in the PS2 coordinate system is different from that in the ROS coordinate system
	  //128为中值。PS2坐标系与ROS坐标系对X、Y的定义不一样
		LY=-(PS2_LX-128);
		LX=-(PS2_LY-128);
		RY=-(PS2_RX-128);
	
	  //Ignore small movements of the joystick //忽略摇杆小幅度动作
		if(LX>-Threshold&&LX<Threshold)LX=0;
		if(LY>-Threshold&&LY<Threshold)LY=0;
		if(RY>-Threshold&&RY<Threshold)RY=0;
		if(LX==0) Move_X=Move_X/1.2f;
		if(RY==0) Move_Z=Move_Z/1.2f;
	
	  if (PS2_KEY==11)		RC_Velocity+=5;  //To accelerate//加速
	  else if(PS2_KEY==9)	RC_Velocity-=5;  //To slow down //减速	
	
		if(RC_Velocity<0)   RC_Velocity=0;
	
	  //Handle PS2 controller control commands
	  //对PS2手柄控制命令进行处理
		Move_X=LX;
		Move_Y=LY;
		Move_Z=RY;
		Move_X=Move_X*RC_Velocity/128;
		Move_Y=Move_Y*RC_Velocity/128;
		Move_Z=Move_Z*(PI/4)*(RC_Velocity/500)/128;
		
		//Z轴数据转化
		#if _4WD
		if(Move_X<0) Move_Z = -Move_Z;	
		Move_Y = 0;
		#endif
		
		//Unit conversion, mm/s -> m/s
    //单位转换，mm/s -> m/s	
		Move_X=Move_X/1000;
		Move_Y=Move_Y/1000;
		 
		//Control target value is obtained and kinematics analysis is performed
	  //得到控制目标值，进行运动学分析
		Drive_Motor(Move_X,Move_Y,Move_Z);		 			
} 

/**************************************************************************
Function: The remote control command of model aircraft is processed
Input   : none
Output  : none
函数功能：对航模遥控控制命令进行处理
入口参数：无
返回  值：无
**************************************************************************/
void Remote_Control(void)
{
	  //Data within 1 second after entering the model control mode will not be processed
	  //对进入航模控制模式后1秒内的数据不处理
    static u8 thrice=100;
    int Threshold=100;

	  //limiter //限幅
    int LX,LY,RY,RX,Remote_RCvelocity; 
	  static float Target_LX,Target_LY,Target_RY,Target_RX;
		Remoter_Ch1=target_limit_int(Remoter_Ch1,1000,2000);
		Remoter_Ch2=target_limit_int(Remoter_Ch2,1000,2000);
		Remoter_Ch3=target_limit_int(Remoter_Ch3,1000,2000);
		Remoter_Ch4=target_limit_int(Remoter_Ch4,1000,2000);

		// Front and back direction of left rocker. Control forward and backward.
	  //左摇杆前后方向。控制前进后退。
    LX=Remoter_Ch2-1500;
	
//		//Left joystick left and right. Control left and right movement.
//	  //左摇杆左右方向。控制左右移动。。
//    LY=Remoter_Ch4-1500;
	
		//Front and back direction of right rocker. Throttle/acceleration/deceleration.
		//右摇杆前后方向。油门/加减速。
	  RX=Remoter_Ch3-1500;		//
	
    //Right stick left and right. To control the rotation. 
		//右摇杆左右方向。控制自转。
    RY=Remoter_Ch1-1500; 

    if(LX>-Threshold&&LX<Threshold)LX=0;
    if(LY>-Threshold&&LY<Threshold)LY=0;
    if(RY>-Threshold&&RY<Threshold)RY=0;
		
		
		if(LX==0) Target_LX=Target_LX/1.2f;
		if(LY==0) Target_LY=Target_LY/1.2f;
		if(RY==0) Target_RY=Target_RY/1.2f;
		
		
		//Throttle related //油门相关
		Remote_RCvelocity=RC_Velocity+RX;
	  if(Remote_RCvelocity<0)Remote_RCvelocity=0;
		
		//The remote control command of model aircraft is processed
		//对航模遥控控制命令进行处理
    Move_X= LX; 
		Move_Y=-LY;
		Move_Z=-RY; 
    Move_X= Move_X*Remote_RCvelocity/500; 
		Move_Y= Move_Y*Remote_RCvelocity/500;
		Move_Z= Move_Z*(PI/4)/500;  
			 
		//Unit conversion, mm/s -> m/s
    //单位转换，mm/s -> m/s	
		Move_X=Move_X/1000;
    Move_Y=Move_Y/1000;
		
		//Z轴数据转化
		#if _4WD
		if(Move_X<0) Move_Z = -Move_Z;	
		Move_Y = 0;
		#endif
		
		//Data within 1 second after entering the model control mode will not be processed
	  //对进入航模控制模式后1秒内的数据不处理
    if(thrice>0) Move_X=0,Move_Z=0,thrice--;
			
		//Control target value is obtained and kinematics analysis is performed
	  //得到控制目标值，进行运动学分析			
		Drive_Motor(Move_X,Move_Y,Move_Z);
}
/**************************************************************************
Function: Click the user button to update gyroscope zero
Input   : none
Output  : none
函数功能：单击用户按键更新陀螺仪零点
入口参数：无
返回  值：无
**************************************************************************/
void Key(void)
{	
	u8 tmp;
	tmp=click(); 
	if(tmp==1)memcpy(Deviation_gyro,Original_gyro,sizeof(gyro));
}
/**************************************************************************
Function: Read the encoder value and calculate the wheel speed, unit m/s
Input   : none
Output  : none
函数功能：读取编码器数值并计算车轮速度，单位m/s
入口参数：无
返回  值：无
**************************************************************************/
void Get_Velocity_Form_Encoder(void)
{
		float Encoder_A_pr,Encoder_B_pr,Encoder_C_pr,Encoder_D_pr; //用于获取编码器的原始数据 

		//Obtain the original data of the encoder, and the polarity of different models of cars is also different
	  //获取编码器的原始数据，同时不同型号的小车极性也不相同
		#if _4WD
			Encoder_A_pr= Read_Encoder(2); 
			Encoder_B_pr= Read_Encoder(3); 
			Encoder_C_pr=-Read_Encoder(4); 
			Encoder_D_pr=-Read_Encoder(5);
		#elif Omni
			Encoder_A_pr=-Read_Encoder(2);
			Encoder_B_pr=-Read_Encoder(3);
			Encoder_C_pr=-Read_Encoder(4);
		#endif

		//The encoder converts the raw data to wheel speed in m/s
		//编码器原始数据转换为车轮速度，单位m/s
		MOTOR_A.Encoder= Encoder_A_pr*CONTROL_FREQUENCY*Wheel_perimeter/Encoder_precision;
		MOTOR_B.Encoder= Encoder_B_pr*CONTROL_FREQUENCY*Wheel_perimeter/Encoder_precision;
		MOTOR_C.Encoder= Encoder_C_pr*CONTROL_FREQUENCY*Wheel_perimeter/Encoder_precision;
		MOTOR_D.Encoder= Encoder_D_pr*CONTROL_FREQUENCY*Wheel_perimeter/Encoder_precision;
}
/**************************************************************************
Function: Smoothing the three axis target velocity
Input   : Three-axis target velocity
Output  : none
函数功能：对三轴目标速度做平滑处理
入口参数：三轴目标速度
返回  值：无
**************************************************************************/
void Smooth_control(float vx,float vy,float vz)
{
	float step=0.02;

	if     (vx>smooth_control.VX) smooth_control.VX+=step;
	else if(vx<smooth_control.VX) smooth_control.VX-=step;
	else                          smooth_control.VX =vx;
	
	if     (vy>smooth_control.VY) smooth_control.VY+=step;
	else if(vy<smooth_control.VY) smooth_control.VY-=step;
	else                          smooth_control.VY =vy;
	
	if     (vz>smooth_control.VZ) smooth_control.VZ+=step;
	else if(vz<smooth_control.VZ) smooth_control.VZ-=step;
	else                          smooth_control.VZ =vz;
	
	if(vx==0&&smooth_control.VX<0.05f&&smooth_control.VX>-0.05f) smooth_control.VX=0;
	if(vy==0&&smooth_control.VY<0.05f&&smooth_control.VY>-0.05f) smooth_control.VY=0;
	if(vz==0&&smooth_control.VZ<0.05f&&smooth_control.VZ>-0.05f) smooth_control.VZ=0;
}
/**************************************************************************
Function: Prevent the potentiometer to choose the wrong mode, resulting in initialization error caused by the motor spinning.
Input   : none
Output  : none
函数功能：防止电位器选错模式，导致初始化出错引发电机乱转。
入口参数：无
返回  值：无
**************************************************************************/
void robot_mode_check(void)
{
	static u8 error=0;
	if(myabs(MOTOR_A.Motor_Pwm)>2000||myabs(MOTOR_B.Motor_Pwm)>2000||myabs(MOTOR_C.Motor_Pwm)>2000||myabs(MOTOR_D.Motor_Pwm)>2000)   error++;
	else error=0;
	
	//If the output is close to full amplitude for 6 times in a row, it is judged that the motor rotates wildly and makes the motor incapacitated
	//如果连续15次接近满幅输出，判断为电机乱转，让电机失能	
	if(error>15) EN=0,Flag_Stop=1,robot_mode_check_flag=1;  
}


