#include "ros/ros.h"
#include <iostream>
#include <string.h>
#include <string> 
#include <iostream>
#include <math.h>
#include <stdlib.h>    
#include <unistd.h>      
#include <sys/types.h>
#include <sys/stat.h>
#include <serial/serial.h>
#include <fcntl.h>          
#include <stdbool.h>
#include <tf/transform_broadcaster.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <sensor_msgs/Imu.h>


void OdomCallback(const nav_msgs::OdometryConstPtr& odom_data) {
    static tf::TransformBroadcaster br;//广播器
    geometry_msgs::TransformStamped odom_trans;

    odom_trans.header.stamp = ros::Time::now();
    odom_trans.header.frame_id = "odom_link";
    odom_trans.child_frame_id = "base_link";

    odom_trans.transform.translation.x = odom_data->pose.pose.position.x;
    odom_trans.transform.translation.y = odom_data->pose.pose.position.y;
    odom_trans.transform.translation.z = odom_data->pose.pose.position.z;
    odom_trans.transform.rotation = odom_data->pose.pose.orientation;

    //广播出去
    br.sendTransform(odom_trans);
}

void ImuCallback(const sensor_msgs::ImuConstPtr& imu_data) {
    static tf::TransformBroadcaster br;//广播器
    /* tf::Transform transform;
    transform.setOrigin(tf::Vector3(0, 0, 0));//设置平移部分

    //从IMU消息包中获取四元数数据
    tf::Quaternion q;
    q.setX(imu_data->orientation.x);
    q.setY(imu_data->orientation.y);
    q.setZ(imu_data->orientation.z);
    q.setW(imu_data->orientation.w);
    q.normalized();//归一化

    transform.setRotation(q);//设置旋转部分
    //广播出去
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "imu_link")); */

    geometry_msgs::TransformStamped laser_trans;

    laser_trans.header.stamp = ros::Time::now();
    laser_trans.header.frame_id = "base_link";
    laser_trans.child_frame_id = "laser_frame";

    laser_trans.transform.translation.x = 0;
    laser_trans.transform.translation.y = 0;
    laser_trans.transform.translation.z = 0;
    laser_trans.transform.rotation.x = 0;
    laser_trans.transform.rotation.y = 0;
    laser_trans.transform.rotation.z = 0;
    laser_trans.transform.rotation.w = 1;

    //广播出去
    br.sendTransform(laser_trans);
}


int main (int argc, char ** argv) {
    ros::init(argc, argv, "mrobot_tf_node");
    ros::NodeHandle n;

    ros::NodeHandle node;
    ros::Subscriber subIMU = node.subscribe("/imu", 10, &ImuCallback);
    ros::Subscriber subOdom = node.subscribe("/odom", 10, &OdomCallback);

    ros::spin();
    return 0;
}
