; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-msg)


;//! \htmlinclude FindRoomSequenceWithCheckpointsGoal.msg.html

(cl:defclass <FindRoomSequenceWithCheckpointsGoal> (roslisp-msg-protocol:ros-message)
  ((input_map
    :reader input_map
    :initarg :input_map
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (map_resolution
    :reader map_resolution
    :initarg :map_resolution
    :type cl:float
    :initform 0.0)
   (map_origin
    :reader map_origin
    :initarg :map_origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (room_information_in_pixel
    :reader room_information_in_pixel
    :initarg :room_information_in_pixel
    :type (cl:vector ipa_building_msgs-msg:RoomInformation)
   :initform (cl:make-array 0 :element-type 'ipa_building_msgs-msg:RoomInformation :initial-element (cl:make-instance 'ipa_building_msgs-msg:RoomInformation)))
   (robot_radius
    :reader robot_radius
    :initarg :robot_radius
    :type cl:float
    :initform 0.0)
   (robot_start_coordinate
    :reader robot_start_coordinate
    :initarg :robot_start_coordinate
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass FindRoomSequenceWithCheckpointsGoal (<FindRoomSequenceWithCheckpointsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindRoomSequenceWithCheckpointsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindRoomSequenceWithCheckpointsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-msg:<FindRoomSequenceWithCheckpointsGoal> is deprecated: use ipa_building_msgs-msg:FindRoomSequenceWithCheckpointsGoal instead.")))

(cl:ensure-generic-function 'input_map-val :lambda-list '(m))
(cl:defmethod input_map-val ((m <FindRoomSequenceWithCheckpointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:input_map-val is deprecated.  Use ipa_building_msgs-msg:input_map instead.")
  (input_map m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <FindRoomSequenceWithCheckpointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:map_resolution-val is deprecated.  Use ipa_building_msgs-msg:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'map_origin-val :lambda-list '(m))
(cl:defmethod map_origin-val ((m <FindRoomSequenceWithCheckpointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:map_origin-val is deprecated.  Use ipa_building_msgs-msg:map_origin instead.")
  (map_origin m))

(cl:ensure-generic-function 'room_information_in_pixel-val :lambda-list '(m))
(cl:defmethod room_information_in_pixel-val ((m <FindRoomSequenceWithCheckpointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_information_in_pixel-val is deprecated.  Use ipa_building_msgs-msg:room_information_in_pixel instead.")
  (room_information_in_pixel m))

(cl:ensure-generic-function 'robot_radius-val :lambda-list '(m))
(cl:defmethod robot_radius-val ((m <FindRoomSequenceWithCheckpointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:robot_radius-val is deprecated.  Use ipa_building_msgs-msg:robot_radius instead.")
  (robot_radius m))

(cl:ensure-generic-function 'robot_start_coordinate-val :lambda-list '(m))
(cl:defmethod robot_start_coordinate-val ((m <FindRoomSequenceWithCheckpointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:robot_start_coordinate-val is deprecated.  Use ipa_building_msgs-msg:robot_start_coordinate instead.")
  (robot_start_coordinate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindRoomSequenceWithCheckpointsGoal>) ostream)
  "Serializes a message object of type '<FindRoomSequenceWithCheckpointsGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_map) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_origin) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'room_information_in_pixel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'room_information_in_pixel))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robot_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_start_coordinate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindRoomSequenceWithCheckpointsGoal>) istream)
  "Deserializes a message object of type '<FindRoomSequenceWithCheckpointsGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_map) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_resolution) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_origin) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'room_information_in_pixel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'room_information_in_pixel)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ipa_building_msgs-msg:RoomInformation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_radius) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_start_coordinate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindRoomSequenceWithCheckpointsGoal>)))
  "Returns string type for a message object of type '<FindRoomSequenceWithCheckpointsGoal>"
  "ipa_building_msgs/FindRoomSequenceWithCheckpointsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindRoomSequenceWithCheckpointsGoal)))
  "Returns string type for a message object of type 'FindRoomSequenceWithCheckpointsGoal"
  "ipa_building_msgs/FindRoomSequenceWithCheckpointsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindRoomSequenceWithCheckpointsGoal>)))
  "Returns md5sum for a message object of type '<FindRoomSequenceWithCheckpointsGoal>"
  "285d49405549631f016ce37520e05929")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindRoomSequenceWithCheckpointsGoal)))
  "Returns md5sum for a message object of type 'FindRoomSequenceWithCheckpointsGoal"
  "285d49405549631f016ce37520e05929")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindRoomSequenceWithCheckpointsGoal>)))
  "Returns full string definition for message of type '<FindRoomSequenceWithCheckpointsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal definition~%sensor_msgs/Image input_map 				# floor plan map [mono8 format], 0=obstacle or unknown, 255=free space ~%float32 map_resolution						# the resolution of the map in [meter/cell]~%geometry_msgs/Pose map_origin				# the origin of the map in [meter]~%ipa_building_msgs/RoomInformation[] room_information_in_pixel		# room data (min/max coordinates, center coordinates) measured in pixels~%float64 robot_radius						# the robot footprint radius [m], used for excluding areas from path planning that could not be visited by the robot~%geometry_msgs/Pose robot_start_coordinate	# current robot location (used to determine the closest checkpoint in the sequence of checkpoints) [in meter]~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ipa_building_msgs/RoomInformation~%geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms~%geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindRoomSequenceWithCheckpointsGoal)))
  "Returns full string definition for message of type 'FindRoomSequenceWithCheckpointsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal definition~%sensor_msgs/Image input_map 				# floor plan map [mono8 format], 0=obstacle or unknown, 255=free space ~%float32 map_resolution						# the resolution of the map in [meter/cell]~%geometry_msgs/Pose map_origin				# the origin of the map in [meter]~%ipa_building_msgs/RoomInformation[] room_information_in_pixel		# room data (min/max coordinates, center coordinates) measured in pixels~%float64 robot_radius						# the robot footprint radius [m], used for excluding areas from path planning that could not be visited by the robot~%geometry_msgs/Pose robot_start_coordinate	# current robot location (used to determine the closest checkpoint in the sequence of checkpoints) [in meter]~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ipa_building_msgs/RoomInformation~%geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms~%geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindRoomSequenceWithCheckpointsGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_map))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_origin))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'room_information_in_pixel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_start_coordinate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindRoomSequenceWithCheckpointsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FindRoomSequenceWithCheckpointsGoal
    (cl:cons ':input_map (input_map msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':map_origin (map_origin msg))
    (cl:cons ':room_information_in_pixel (room_information_in_pixel msg))
    (cl:cons ':robot_radius (robot_radius msg))
    (cl:cons ':robot_start_coordinate (robot_start_coordinate msg))
))
