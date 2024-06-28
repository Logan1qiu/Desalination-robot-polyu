ls /dev/tty*  查看串口号
sudo chmod 777 /dev/ttyUSB0  赋予权限
sudo chmod 777 /dev/ttyCH343USB0
catkin_make
source ./devel/setup.bash

roslaunch mrobot_drive mrobot_drive.launch

查看发布信息
rostopic list //查看当前话题
rostopic echo //查看对应话题信息

2024.02.22 完成第一个ros底盘驱动开发，可以实现与底盘的通讯，向ros发布imu odom powervoltage 信息，接受速度消息并发送至底盘