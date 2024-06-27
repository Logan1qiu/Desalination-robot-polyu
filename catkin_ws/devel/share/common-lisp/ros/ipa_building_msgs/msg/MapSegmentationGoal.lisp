; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-msg)


;//! \htmlinclude MapSegmentationGoal.msg.html

(cl:defclass <MapSegmentationGoal> (roslisp-msg-protocol:ros-message)
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
   (return_format_in_pixel
    :reader return_format_in_pixel
    :initarg :return_format_in_pixel
    :type cl:boolean
    :initform cl:nil)
   (return_format_in_meter
    :reader return_format_in_meter
    :initarg :return_format_in_meter
    :type cl:boolean
    :initform cl:nil)
   (robot_radius
    :reader robot_radius
    :initarg :robot_radius
    :type cl:float
    :initform 0.0)
   (room_segmentation_algorithm
    :reader room_segmentation_algorithm
    :initarg :room_segmentation_algorithm
    :type cl:integer
    :initform 0))
)

(cl:defclass MapSegmentationGoal (<MapSegmentationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapSegmentationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapSegmentationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-msg:<MapSegmentationGoal> is deprecated: use ipa_building_msgs-msg:MapSegmentationGoal instead.")))

(cl:ensure-generic-function 'input_map-val :lambda-list '(m))
(cl:defmethod input_map-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:input_map-val is deprecated.  Use ipa_building_msgs-msg:input_map instead.")
  (input_map m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:map_resolution-val is deprecated.  Use ipa_building_msgs-msg:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'map_origin-val :lambda-list '(m))
(cl:defmethod map_origin-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:map_origin-val is deprecated.  Use ipa_building_msgs-msg:map_origin instead.")
  (map_origin m))

(cl:ensure-generic-function 'return_format_in_pixel-val :lambda-list '(m))
(cl:defmethod return_format_in_pixel-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:return_format_in_pixel-val is deprecated.  Use ipa_building_msgs-msg:return_format_in_pixel instead.")
  (return_format_in_pixel m))

(cl:ensure-generic-function 'return_format_in_meter-val :lambda-list '(m))
(cl:defmethod return_format_in_meter-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:return_format_in_meter-val is deprecated.  Use ipa_building_msgs-msg:return_format_in_meter instead.")
  (return_format_in_meter m))

(cl:ensure-generic-function 'robot_radius-val :lambda-list '(m))
(cl:defmethod robot_radius-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:robot_radius-val is deprecated.  Use ipa_building_msgs-msg:robot_radius instead.")
  (robot_radius m))

(cl:ensure-generic-function 'room_segmentation_algorithm-val :lambda-list '(m))
(cl:defmethod room_segmentation_algorithm-val ((m <MapSegmentationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_segmentation_algorithm-val is deprecated.  Use ipa_building_msgs-msg:room_segmentation_algorithm instead.")
  (room_segmentation_algorithm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapSegmentationGoal>) ostream)
  "Serializes a message object of type '<MapSegmentationGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_map) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_origin) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_format_in_pixel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_format_in_meter) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'robot_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'room_segmentation_algorithm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapSegmentationGoal>) istream)
  "Deserializes a message object of type '<MapSegmentationGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_map) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_resolution) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_origin) istream)
    (cl:setf (cl:slot-value msg 'return_format_in_pixel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'return_format_in_meter) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room_segmentation_algorithm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapSegmentationGoal>)))
  "Returns string type for a message object of type '<MapSegmentationGoal>"
  "ipa_building_msgs/MapSegmentationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapSegmentationGoal)))
  "Returns string type for a message object of type 'MapSegmentationGoal"
  "ipa_building_msgs/MapSegmentationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapSegmentationGoal>)))
  "Returns md5sum for a message object of type '<MapSegmentationGoal>"
  "005594594c5d18af6e00b99b0307120a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapSegmentationGoal)))
  "Returns md5sum for a message object of type 'MapSegmentationGoal"
  "005594594c5d18af6e00b99b0307120a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapSegmentationGoal>)))
  "Returns full string definition for message of type '<MapSegmentationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Map Segmentation action~%# Provides interface to get the segmented map~%~%# goal definition~%sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space~%float32 map_resolution					# the resolution of the map in [meter/cell]~%geometry_msgs/Pose map_origin			# the origin of the map in [meter]~%bool return_format_in_pixel				# return room data (see below) in [pixel]~%bool return_format_in_meter				# return room data (see below) in [meter]~%float32 robot_radius					# in [meter]; if this variable is set to a value greater than 0, the room centers are chosen at locations that are reachable from neighboring rooms (i.e. not inside the legs of a table surrounded by chairs)~%int32 room_segmentation_algorithm		# optionally overrides the parameterized segmentation method (if -1 it just takes the preset)~%										#  0 = take the preset (parameterized) method~%										#  1 = MorphologicalSegmentation~%										#  2 = DistanceSegmentation~%										#  3 = VoronoiSegmentation~%										#  4 = SemanticSegmentation~%										#  5 = RandomFieldSegmentation~%										# 99 = PassThrough (just get a pre-segmented map into the right output format)~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapSegmentationGoal)))
  "Returns full string definition for message of type 'MapSegmentationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Map Segmentation action~%# Provides interface to get the segmented map~%~%# goal definition~%sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space~%float32 map_resolution					# the resolution of the map in [meter/cell]~%geometry_msgs/Pose map_origin			# the origin of the map in [meter]~%bool return_format_in_pixel				# return room data (see below) in [pixel]~%bool return_format_in_meter				# return room data (see below) in [meter]~%float32 robot_radius					# in [meter]; if this variable is set to a value greater than 0, the room centers are chosen at locations that are reachable from neighboring rooms (i.e. not inside the legs of a table surrounded by chairs)~%int32 room_segmentation_algorithm		# optionally overrides the parameterized segmentation method (if -1 it just takes the preset)~%										#  0 = take the preset (parameterized) method~%										#  1 = MorphologicalSegmentation~%										#  2 = DistanceSegmentation~%										#  3 = VoronoiSegmentation~%										#  4 = SemanticSegmentation~%										#  5 = RandomFieldSegmentation~%										# 99 = PassThrough (just get a pre-segmented map into the right output format)~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapSegmentationGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_map))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_origin))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapSegmentationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MapSegmentationGoal
    (cl:cons ':input_map (input_map msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':map_origin (map_origin msg))
    (cl:cons ':return_format_in_pixel (return_format_in_pixel msg))
    (cl:cons ':return_format_in_meter (return_format_in_meter msg))
    (cl:cons ':robot_radius (robot_radius msg))
    (cl:cons ':room_segmentation_algorithm (room_segmentation_algorithm msg))
))
