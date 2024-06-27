;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::MapSegmentationGoal)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'MapSegmentationGoal (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::MAPSEGMENTATIONGOAL")
  (make-package "IPA_BUILDING_MSGS::MAPSEGMENTATIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude MapSegmentationGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ipa_building_msgs::MapSegmentationGoal
  :super ros::object
  :slots (_input_map _map_resolution _map_origin _return_format_in_pixel _return_format_in_meter _robot_radius _room_segmentation_algorithm ))

(defmethod ipa_building_msgs::MapSegmentationGoal
  (:init
   (&key
    ((:input_map __input_map) (instance sensor_msgs::Image :init))
    ((:map_resolution __map_resolution) 0.0)
    ((:map_origin __map_origin) (instance geometry_msgs::Pose :init))
    ((:return_format_in_pixel __return_format_in_pixel) nil)
    ((:return_format_in_meter __return_format_in_meter) nil)
    ((:robot_radius __robot_radius) 0.0)
    ((:room_segmentation_algorithm __room_segmentation_algorithm) 0)
    )
   (send-super :init)
   (setq _input_map __input_map)
   (setq _map_resolution (float __map_resolution))
   (setq _map_origin __map_origin)
   (setq _return_format_in_pixel __return_format_in_pixel)
   (setq _return_format_in_meter __return_format_in_meter)
   (setq _robot_radius (float __robot_radius))
   (setq _room_segmentation_algorithm (round __room_segmentation_algorithm))
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
  (:return_format_in_pixel
   (&optional (__return_format_in_pixel :null))
   (if (not (eq __return_format_in_pixel :null)) (setq _return_format_in_pixel __return_format_in_pixel)) _return_format_in_pixel)
  (:return_format_in_meter
   (&optional (__return_format_in_meter :null))
   (if (not (eq __return_format_in_meter :null)) (setq _return_format_in_meter __return_format_in_meter)) _return_format_in_meter)
  (:robot_radius
   (&optional __robot_radius)
   (if __robot_radius (setq _robot_radius __robot_radius)) _robot_radius)
  (:room_segmentation_algorithm
   (&optional __room_segmentation_algorithm)
   (if __room_segmentation_algorithm (setq _room_segmentation_algorithm __room_segmentation_algorithm)) _room_segmentation_algorithm)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _input_map
    (send _input_map :serialization-length)
    ;; float32 _map_resolution
    4
    ;; geometry_msgs/Pose _map_origin
    (send _map_origin :serialization-length)
    ;; bool _return_format_in_pixel
    1
    ;; bool _return_format_in_meter
    1
    ;; float32 _robot_radius
    4
    ;; int32 _room_segmentation_algorithm
    4
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
     ;; bool _return_format_in_pixel
       (if _return_format_in_pixel (write-byte -1 s) (write-byte 0 s))
     ;; bool _return_format_in_meter
       (if _return_format_in_meter (write-byte -1 s) (write-byte 0 s))
     ;; float32 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _room_segmentation_algorithm
       (write-long _room_segmentation_algorithm s)
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
   ;; bool _return_format_in_pixel
     (setq _return_format_in_pixel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _return_format_in_meter
     (setq _return_format_in_meter (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _room_segmentation_algorithm
     (setq _room_segmentation_algorithm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ipa_building_msgs::MapSegmentationGoal :md5sum-) "005594594c5d18af6e00b99b0307120a")
(setf (get ipa_building_msgs::MapSegmentationGoal :datatype-) "ipa_building_msgs/MapSegmentationGoal")
(setf (get ipa_building_msgs::MapSegmentationGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Map Segmentation action
# Provides interface to get the segmented map

# goal definition
sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space
float32 map_resolution					# the resolution of the map in [meter/cell]
geometry_msgs/Pose map_origin			# the origin of the map in [meter]
bool return_format_in_pixel				# return room data (see below) in [pixel]
bool return_format_in_meter				# return room data (see below) in [meter]
float32 robot_radius					# in [meter]; if this variable is set to a value greater than 0, the room centers are chosen at locations that are reachable from neighboring rooms (i.e. not inside the legs of a table surrounded by chairs)
int32 room_segmentation_algorithm		# optionally overrides the parameterized segmentation method (if -1 it just takes the preset)
										#  0 = take the preset (parameterized) method
										#  1 = MorphologicalSegmentation
										#  2 = DistanceSegmentation
										#  3 = VoronoiSegmentation
										#  4 = SemanticSegmentation
										#  5 = RandomFieldSegmentation
										# 99 = PassThrough (just get a pre-segmented map into the right output format)


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

")



(provide :ipa_building_msgs/MapSegmentationGoal "005594594c5d18af6e00b99b0307120a")


