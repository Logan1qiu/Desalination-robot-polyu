;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::RoomInformation)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'RoomInformation (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::ROOMINFORMATION")
  (make-package "IPA_BUILDING_MSGS::ROOMINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude RoomInformation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ipa_building_msgs::RoomInformation
  :super ros::object
  :slots (_room_min_max _room_center ))

(defmethod ipa_building_msgs::RoomInformation
  (:init
   (&key
    ((:room_min_max __room_min_max) (instance geometry_msgs::Polygon :init))
    ((:room_center __room_center) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _room_min_max __room_min_max)
   (setq _room_center __room_center)
   self)
  (:room_min_max
   (&rest __room_min_max)
   (if (keywordp (car __room_min_max))
       (send* _room_min_max __room_min_max)
     (progn
       (if __room_min_max (setq _room_min_max (car __room_min_max)))
       _room_min_max)))
  (:room_center
   (&rest __room_center)
   (if (keywordp (car __room_center))
       (send* _room_center __room_center)
     (progn
       (if __room_center (setq _room_center (car __room_center)))
       _room_center)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Polygon _room_min_max
    (send _room_min_max :serialization-length)
    ;; geometry_msgs/Point32 _room_center
    (send _room_center :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Polygon _room_min_max
       (send _room_min_max :serialize s)
     ;; geometry_msgs/Point32 _room_center
       (send _room_center :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Polygon _room_min_max
     (send _room_min_max :deserialize buf ptr-) (incf ptr- (send _room_min_max :serialization-length))
   ;; geometry_msgs/Point32 _room_center
     (send _room_center :deserialize buf ptr-) (incf ptr- (send _room_center :serialization-length))
   ;;
   self)
  )

(setf (get ipa_building_msgs::RoomInformation :md5sum-) "c095dc11b0eae6e6ce775e203036a201")
(setf (get ipa_building_msgs::RoomInformation :datatype-) "ipa_building_msgs/RoomInformation")
(setf (get ipa_building_msgs::RoomInformation :definition-)
      "geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms
geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers
================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :ipa_building_msgs/RoomInformation "c095dc11b0eae6e6ce775e203036a201")


