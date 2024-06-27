gazebo运行失败
killall gzserver
dingwei
rosservice call /global_localization "{}" 
gedit ~/.bashrc

source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash --extend
source ~/cartographer_ws/install_isolated/setup.bash --extend
export GAZEBO_INCLUDE_DIRS=$GAZEBO_INCLUDE_DIRS:/usr/include/sdformat-6.2
export GAZEBO_LIBRARY_DIRS=$GAZEBO_LIBRARY_DIRS:/usr/lib/lib/x86_64-linux-gnu

catkin_find --without-underlays --libexec --share map_server //如果ros系统的运行不起来，找到同名包的位置并删除



