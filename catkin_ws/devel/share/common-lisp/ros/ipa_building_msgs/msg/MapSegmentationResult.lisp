; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-msg)


;//! \htmlinclude MapSegmentationResult.msg.html

(cl:defclass <MapSegmentationResult> (roslisp-msg-protocol:ros-message)
  ((segmented_map
    :reader segmented_map
    :initarg :segmented_map
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
   (room_information_in_meter
    :reader room_information_in_meter
    :initarg :room_information_in_meter
    :type (cl:vector ipa_building_msgs-msg:RoomInformation)
   :initform (cl:make-array 0 :element-type 'ipa_building_msgs-msg:RoomInformation :initial-element (cl:make-instance 'ipa_building_msgs-msg:RoomInformation)))
   (doorway_points
    :reader doorway_points
    :initarg :doorway_points
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass MapSegmentationResult (<MapSegmentationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapSegmentationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapSegmentationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-msg:<MapSegmentationResult> is deprecated: use ipa_building_msgs-msg:MapSegmentationResult instead.")))

(cl:ensure-generic-function 'segmented_map-val :lambda-list '(m))
(cl:defmethod segmented_map-val ((m <MapSegmentationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:segmented_map-val is deprecated.  Use ipa_building_msgs-msg:segmented_map instead.")
  (segmented_map m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <MapSegmentationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:map_resolution-val is deprecated.  Use ipa_building_msgs-msg:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'map_origin-val :lambda-list '(m))
(cl:defmethod map_origin-val ((m <MapSegmentationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:map_origin-val is deprecated.  Use ipa_building_msgs-msg:map_origin instead.")
  (map_origin m))

(cl:ensure-generic-function 'room_information_in_pixel-val :lambda-list '(m))
(cl:defmethod room_information_in_pixel-val ((m <MapSegmentationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_information_in_pixel-val is deprecated.  Use ipa_building_msgs-msg:room_information_in_pixel instead.")
  (room_information_in_pixel m))

(cl:ensure-generic-function 'room_information_in_meter-val :lambda-list '(m))
(cl:defmethod room_information_in_meter-val ((m <MapSegmentationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_information_in_meter-val is deprecated.  Use ipa_building_msgs-msg:room_information_in_meter instead.")
  (room_information_in_meter m))

(cl:ensure-generic-function 'doorway_points-val :lambda-list '(m))
(cl:defmethod doorway_points-val ((m <MapSegmentationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:doorway_points-val is deprecated.  Use ipa_building_msgs-msg:doorway_points instead.")
  (doorway_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapSegmentationResult>) ostream)
  "Serializes a message object of type '<MapSegmentationResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmented_map) ostream)
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'room_information_in_meter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'room_information_in_meter))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'doorway_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'doorway_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapSegmentationResult>) istream)
  "Deserializes a message object of type '<MapSegmentationResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmented_map) istream)
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'room_information_in_meter) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'room_information_in_meter)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ipa_building_msgs-msg:RoomInformation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'doorway_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'doorway_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapSegmentationResult>)))
  "Returns string type for a message object of type '<MapSegmentationResult>"
  "ipa_building_msgs/MapSegmentationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapSegmentationResult)))
  "Returns string type for a message object of type 'MapSegmentationResult"
  "ipa_building_msgs/MapSegmentationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapSegmentationResult>)))
  "Returns md5sum for a message object of type '<MapSegmentationResult>"
  "eb2ec1be8ee603d0cc882bfcd358371b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapSegmentationResult)))
  "Returns md5sum for a message object of type 'MapSegmentationResult"
  "eb2ec1be8ee603d0cc882bfcd358371b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapSegmentationResult>)))
  "Returns full string definition for message of type '<MapSegmentationResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# result definition~%sensor_msgs/Image segmented_map			# the action server returns a map segmented into rooms which carry the segment number in every pixel cell, format 32SC1, room labels from 1 to N, room with label i -> access to room_information_in_pixel[i-1]~%float32 map_resolution					# the resolution of the segmented map in [meter/cell]~%geometry_msgs/Pose map_origin			# the origin of the segmented map in [meter]~%# for the following data: value in pixel can be obtained when the value of [return_format_in_pixel] from goal definition is true~%# the computed room centers are not the centroids of the room cells (which could be located outside of the rooms)~%# but accessible map pixels located within the center of the largest free space in the room~%ipa_building_msgs/RoomInformation[] room_information_in_pixel		# room data (min/max coordinates, center coordinates) measured in pixels~%# for the following data: value in meter can be obtained when the value of [return_format_in_meter] from goal definition is true~%# the computed room centers are not the centroids of the room cells (which could be located outside of the rooms)~%# but accessible map pixels located within the center of the largest free space in the room~%ipa_building_msgs/RoomInformation[] room_information_in_meter		# room data (min/max coordinates, center coordinates) measured in meters~%# if wanted the 5th algorithm (vrf) can return single points labeled as a doorway~%geometry_msgs/Point32[] doorway_points~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ipa_building_msgs/RoomInformation~%geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms~%geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapSegmentationResult)))
  "Returns full string definition for message of type 'MapSegmentationResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# result definition~%sensor_msgs/Image segmented_map			# the action server returns a map segmented into rooms which carry the segment number in every pixel cell, format 32SC1, room labels from 1 to N, room with label i -> access to room_information_in_pixel[i-1]~%float32 map_resolution					# the resolution of the segmented map in [meter/cell]~%geometry_msgs/Pose map_origin			# the origin of the segmented map in [meter]~%# for the following data: value in pixel can be obtained when the value of [return_format_in_pixel] from goal definition is true~%# the computed room centers are not the centroids of the room cells (which could be located outside of the rooms)~%# but accessible map pixels located within the center of the largest free space in the room~%ipa_building_msgs/RoomInformation[] room_information_in_pixel		# room data (min/max coordinates, center coordinates) measured in pixels~%# for the following data: value in meter can be obtained when the value of [return_format_in_meter] from goal definition is true~%# the computed room centers are not the centroids of the room cells (which could be located outside of the rooms)~%# but accessible map pixels located within the center of the largest free space in the room~%ipa_building_msgs/RoomInformation[] room_information_in_meter		# room data (min/max coordinates, center coordinates) measured in meters~%# if wanted the 5th algorithm (vrf) can return single points labeled as a doorway~%geometry_msgs/Point32[] doorway_points~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ipa_building_msgs/RoomInformation~%geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms~%geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapSegmentationResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmented_map))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_origin))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'room_information_in_pixel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'room_information_in_meter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'doorway_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapSegmentationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MapSegmentationResult
    (cl:cons ':segmented_map (segmented_map msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':map_origin (map_origin msg))
    (cl:cons ':room_information_in_pixel (room_information_in_pixel msg))
    (cl:cons ':room_information_in_meter (room_information_in_meter msg))
    (cl:cons ':doorway_points (doorway_points msg))
))
