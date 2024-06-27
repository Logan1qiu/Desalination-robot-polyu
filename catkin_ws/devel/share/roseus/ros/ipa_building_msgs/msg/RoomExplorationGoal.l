;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::RoomExplorationGoal)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'RoomExplorationGoal (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::ROOMEXPLORATIONGOAL")
  (make-package "IPA_BUILDING_MSGS::ROOMEXPLORATIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude RoomExplorationGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ipa_building_msgs::RoomExplorationGoal
  :super ros::object
  :slots (_input_map _map_resolution _map_origin _robot_radius _coverage_radius _field_of_view _field_of_view_origin _starting_position _planning_mode ))

(defmethod ipa_building_msgs::RoomExplorationGoal
  (:init
   (&key
    ((:input_map __input_map) (instance sensor_msgs::Image :init))
    ((:map_resolution __map_resolution) 0.0)
    ((:map_origin __map_origin) (instance geometry_msgs::Pose :init))
    ((:robot_radius __robot_radius) 0.0)
    ((:coverage_radius __coverage_radius) 0.0)
    ((:field_of_view __field_of_view) ())
    ((:field_of_view_origin __field_of_view_origin) (instance geometry_msgs::Point32 :init))
    ((:starting_position __starting_position) (instance geometry_msgs::Pose2D :init))
    ((:planning_mode __planning_mode) 0)
    )
   (send-super :init)
   (setq _input_map __input_map)
   (setq _map_resolution (float __map_resolution))
   (setq _map_origin __map_origin)
   (setq _robot_radius (float __robot_radius))
   (setq _coverage_radius (float __coverage_radius))
   (setq _field_of_view __field_of_view)
   (setq _field_of_view_origin __field_of_view_origin)
   (setq _starting_position __starting_position)
   (setq _planning_mode (round __planning_mode))
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
  (:robot_radius
   (&optional __robot_radius)
   (if __robot_radius (setq _robot_radius __robot_radius)) _robot_radius)
  (:coverage_radius
   (&optional __coverage_radius)
   (if __coverage_radius (setq _coverage_radius __coverage_radius)) _coverage_radius)
  (:field_of_view
   (&rest __field_of_view)
   (if (keywordp (car __field_of_view))
       (send* _field_of_view __field_of_view)
     (progn
       (if __field_of_view (setq _field_of_view (car __field_of_view)))
       _field_of_view)))
  (:field_of_view_origin
   (&rest __field_of_view_origin)
   (if (keywordp (car __field_of_view_origin))
       (send* _field_of_view_origin __field_of_view_origin)
     (progn
       (if __field_of_view_origin (setq _field_of_view_origin (car __field_of_view_origin)))
       _field_of_view_origin)))
  (:starting_position
   (&rest __starting_position)
   (if (keywordp (car __starting_position))
       (send* _starting_position __starting_position)
     (progn
       (if __starting_position (setq _starting_position (car __starting_position)))
       _starting_position)))
  (:planning_mode
   (&optional __planning_mode)
   (if __planning_mode (setq _planning_mode __planning_mode)) _planning_mode)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _input_map
    (send _input_map :serialization-length)
    ;; float32 _map_resolution
    4
    ;; geometry_msgs/Pose _map_origin
    (send _map_origin :serialization-length)
    ;; float32 _robot_radius
    4
    ;; float32 _coverage_radius
    4
    ;; geometry_msgs/Point32[] _field_of_view
    (apply #'+ (send-all _field_of_view :serialization-length)) 4
    ;; geometry_msgs/Point32 _field_of_view_origin
    (send _field_of_view_origin :serialization-length)
    ;; geometry_msgs/Pose2D _starting_position
    (send _starting_position :serialization-length)
    ;; int32 _planning_mode
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
     ;; float32 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _coverage_radius
       (sys::poke _coverage_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32[] _field_of_view
     (write-long (length _field_of_view) s)
     (dolist (elem _field_of_view)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32 _field_of_view_origin
       (send _field_of_view_origin :serialize s)
     ;; geometry_msgs/Pose2D _starting_position
       (send _starting_position :serialize s)
     ;; int32 _planning_mode
       (write-long _planning_mode s)
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
   ;; float32 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _coverage_radius
     (setq _coverage_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32[] _field_of_view
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _field_of_view (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _field_of_view)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32 _field_of_view_origin
     (send _field_of_view_origin :deserialize buf ptr-) (incf ptr- (send _field_of_view_origin :serialization-length))
   ;; geometry_msgs/Pose2D _starting_position
     (send _starting_position :deserialize buf ptr-) (incf ptr- (send _starting_position :serialization-length))
   ;; int32 _planning_mode
     (setq _planning_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ipa_building_msgs::RoomExplorationGoal :md5sum-) "138d823e8057c5cbb0a8a15be2afce8f")
(setf (get ipa_building_msgs::RoomExplorationGoal :datatype-) "ipa_building_msgs/RoomExplorationGoal")
(setf (get ipa_building_msgs::RoomExplorationGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Room Exploration action
# sends an occupancy grid map of a room to the server, which plans a path trough it to cover or inspect the whole room by a device or camera

# goal definition
sensor_msgs/Image input_map				# the action server needs a map as a input image to segment it,
										# IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space
										#            todo: the image needs to be vertically mirrored compared to the map in RViz for using right coordinate systems
										#                  OccupancyGrid map = origin lower left corner, image = origin upper left corner
										#            todo: take the OccupanyGrid message here instead to avoid confusion and deal with map coordinates in server
float32 map_resolution					# the resolution of the map in [meter/cell]
geometry_msgs/Pose map_origin			# the origin of the map in [meter], NOTE: rotations are not supported for now
float32 robot_radius					# effective robot radius, taking the enlargement of the costmap into account, in [meter]
float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]
geometry_msgs/Point32[] field_of_view	# the 4 points that define the field of view of the robot, relatively to the robot coordinate system (with x pointing forwards and y pointing to the left), in [meter]
geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
geometry_msgs/Pose2D starting_position	# starting pose of the robot in the room coordinate system [meter,meter,rad]
int32 planning_mode						# 1 = plans a path for coverage with the robot footprint, 2 = plans a path for coverage with the robot's field of view


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
================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :ipa_building_msgs/RoomExplorationGoal "138d823e8057c5cbb0a8a15be2afce8f")


