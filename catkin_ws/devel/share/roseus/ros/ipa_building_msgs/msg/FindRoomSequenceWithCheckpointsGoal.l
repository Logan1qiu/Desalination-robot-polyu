;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'FindRoomSequenceWithCheckpointsGoal (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::FINDROOMSEQUENCEWITHCHECKPOINTSGOAL")
  (make-package "IPA_BUILDING_MSGS::FINDROOMSEQUENCEWITHCHECKPOINTSGOAL"))

(in-package "ROS")
;;//! \htmlinclude FindRoomSequenceWithCheckpointsGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal
  :super ros::object
  :slots (_input_map _map_resolution _map_origin _room_information_in_pixel _robot_radius _robot_start_coordinate ))

(defmethod ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal
  (:init
   (&key
    ((:input_map __input_map) (instance sensor_msgs::Image :init))
    ((:map_resolution __map_resolution) 0.0)
    ((:map_origin __map_origin) (instance geometry_msgs::Pose :init))
    ((:room_information_in_pixel __room_information_in_pixel) ())
    ((:robot_radius __robot_radius) 0.0)
    ((:robot_start_coordinate __robot_start_coordinate) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _input_map __input_map)
   (setq _map_resolution (float __map_resolution))
   (setq _map_origin __map_origin)
   (setq _room_information_in_pixel __room_information_in_pixel)
   (setq _robot_radius (float __robot_radius))
   (setq _robot_start_coordinate __robot_start_coordinate)
   self)
  (:input_map
   (&rest __input_map)
   (if (keywordp (car __input_map))
       (send* _input_map __input_map)
     (progn
       (if __input_map (setq _input_map (car __input_map)))
       _input_map)))
  (:map_resolution
   (&optional __map_resolution)
   (if __map_resolution (setq _map_resolution __map_resolution)) _map_resolution)
  (:map_origin
   (&rest __map_origin)
   (if (keywordp (car __map_origin))
       (send* _map_origin __map_origin)
     (progn
       (if __map_origin (setq _map_origin (car __map_origin)))
       _map_origin)))
  (:room_information_in_pixel
   (&rest __room_information_in_pixel)
   (if (keywordp (car __room_information_in_pixel))
       (send* _room_information_in_pixel __room_information_in_pixel)
     (progn
       (if __room_information_in_pixel (setq _room_information_in_pixel (car __room_information_in_pixel)))
       _room_information_in_pixel)))
  (:robot_radius
   (&optional __robot_radius)
   (if __robot_radius (setq _robot_radius __robot_radius)) _robot_radius)
  (:robot_start_coordinate
   (&rest __robot_start_coordinate)
   (if (keywordp (car __robot_start_coordinate))
       (send* _robot_start_coordinate __robot_start_coordinate)
     (progn
       (if __robot_start_coordinate (setq _robot_start_coordinate (car __robot_start_coordinate)))
       _robot_start_coordinate)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _input_map
    (send _input_map :serialization-length)
    ;; float32 _map_resolution
    4
    ;; geometry_msgs/Pose _map_origin
    (send _map_origin :serialization-length)
    ;; ipa_building_msgs/RoomInformation[] _room_information_in_pixel
    (apply #'+ (send-all _room_information_in_pixel :serialization-length)) 4
    ;; float64 _robot_radius
    8
    ;; geometry_msgs/Pose _robot_start_coordinate
    (send _robot_start_coordinate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _input_map
       (send _input_map :serialize s)
     ;; float32 _map_resolution
       (sys::poke _map_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose _map_origin
       (send _map_origin :serialize s)
     ;; ipa_building_msgs/RoomInformation[] _room_information_in_pixel
     (write-long (length _room_information_in_pixel) s)
     (dolist (elem _room_information_in_pixel)
       (send elem :serialize s)
       )
     ;; float64 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _robot_start_coordinate
       (send _robot_start_coordinate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _input_map
     (send _input_map :deserialize buf ptr-) (incf ptr- (send _input_map :serialization-length))
   ;; float32 _map_resolution
     (setq _map_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose _map_origin
     (send _map_origin :deserialize buf ptr-) (incf ptr- (send _map_origin :serialization-length))
   ;; ipa_building_msgs/RoomInformation[] _room_information_in_pixel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _room_information_in_pixel (let (r) (dotimes (i n) (push (instance ipa_building_msgs::RoomInformation :init) r)) r))
     (dolist (elem- _room_information_in_pixel)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _robot_start_coordinate
     (send _robot_start_coordinate :deserialize buf ptr-) (incf ptr- (send _robot_start_coordinate :serialization-length))
   ;;
   self)
  )

(setf (get ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal :md5sum-) "285d49405549631f016ce37520e05929")
(setf (get ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal :datatype-) "ipa_building_msgs/FindRoomSequenceWithCheckpointsGoal")
(setf (get ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# goal definition
sensor_msgs/Image input_map 				# floor plan map [mono8 format], 0=obstacle or unknown, 255=free space 
float32 map_resolution						# the resolution of the map in [meter/cell]
geometry_msgs/Pose map_origin				# the origin of the map in [meter]
ipa_building_msgs/RoomInformation[] room_information_in_pixel		# room data (min/max coordinates, center coordinates) measured in pixels
float64 robot_radius						# the robot footprint radius [m], used for excluding areas from path planning that could not be visited by the robot
geometry_msgs/Pose robot_start_coordinate	# current robot location (used to determine the closest checkpoint in the sequence of checkpoints) [in meter]


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: ipa_building_msgs/RoomInformation
geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms
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



(provide :ipa_building_msgs/FindRoomSequenceWithCheckpointsGoal "285d49405549631f016ce37520e05929")


