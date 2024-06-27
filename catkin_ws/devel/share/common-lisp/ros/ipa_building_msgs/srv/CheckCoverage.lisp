; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-srv)


;//! \htmlinclude CheckCoverage-request.msg.html

(cl:defclass <CheckCoverage-request> (roslisp-msg-protocol:ros-message)
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
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (field_of_view
    :reader field_of_view
    :initarg :field_of_view
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (field_of_view_origin
    :reader field_of_view_origin
    :initarg :field_of_view_origin
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (coverage_radius
    :reader coverage_radius
    :initarg :coverage_radius
    :type cl:float
    :initform 0.0)
   (check_for_footprint
    :reader check_for_footprint
    :initarg :check_for_footprint
    :type cl:boolean
    :initform cl:nil)
   (check_number_of_coverages
    :reader check_number_of_coverages
    :initarg :check_number_of_coverages
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckCoverage-request (<CheckCoverage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCoverage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCoverage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-srv:<CheckCoverage-request> is deprecated: use ipa_building_msgs-srv:CheckCoverage-request instead.")))

(cl:ensure-generic-function 'input_map-val :lambda-list '(m))
(cl:defmethod input_map-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:input_map-val is deprecated.  Use ipa_building_msgs-srv:input_map instead.")
  (input_map m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:map_resolution-val is deprecated.  Use ipa_building_msgs-srv:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'map_origin-val :lambda-list '(m))
(cl:defmethod map_origin-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:map_origin-val is deprecated.  Use ipa_building_msgs-srv:map_origin instead.")
  (map_origin m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:path-val is deprecated.  Use ipa_building_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'field_of_view-val :lambda-list '(m))
(cl:defmethod field_of_view-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:field_of_view-val is deprecated.  Use ipa_building_msgs-srv:field_of_view instead.")
  (field_of_view m))

(cl:ensure-generic-function 'field_of_view_origin-val :lambda-list '(m))
(cl:defmethod field_of_view_origin-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:field_of_view_origin-val is deprecated.  Use ipa_building_msgs-srv:field_of_view_origin instead.")
  (field_of_view_origin m))

(cl:ensure-generic-function 'coverage_radius-val :lambda-list '(m))
(cl:defmethod coverage_radius-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:coverage_radius-val is deprecated.  Use ipa_building_msgs-srv:coverage_radius instead.")
  (coverage_radius m))

(cl:ensure-generic-function 'check_for_footprint-val :lambda-list '(m))
(cl:defmethod check_for_footprint-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:check_for_footprint-val is deprecated.  Use ipa_building_msgs-srv:check_for_footprint instead.")
  (check_for_footprint m))

(cl:ensure-generic-function 'check_number_of_coverages-val :lambda-list '(m))
(cl:defmethod check_number_of_coverages-val ((m <CheckCoverage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:check_number_of_coverages-val is deprecated.  Use ipa_building_msgs-srv:check_number_of_coverages instead.")
  (check_number_of_coverages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCoverage-request>) ostream)
  "Serializes a message object of type '<CheckCoverage-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_map) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_origin) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'field_of_view))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'field_of_view))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'field_of_view_origin) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'coverage_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_for_footprint) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_number_of_coverages) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCoverage-request>) istream)
  "Deserializes a message object of type '<CheckCoverage-request>"
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
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'field_of_view) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'field_of_view)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'field_of_view_origin) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'coverage_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'check_for_footprint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'check_number_of_coverages) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCoverage-request>)))
  "Returns string type for a service object of type '<CheckCoverage-request>"
  "ipa_building_msgs/CheckCoverageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCoverage-request)))
  "Returns string type for a service object of type 'CheckCoverage-request"
  "ipa_building_msgs/CheckCoverageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCoverage-request>)))
  "Returns md5sum for a message object of type '<CheckCoverage-request>"
  "c39dded0eb0ee02116211ecd0f2054c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCoverage-request)))
  "Returns md5sum for a message object of type 'CheckCoverage-request"
  "c39dded0eb0ee02116211ecd0f2054c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCoverage-request>)))
  "Returns full string definition for message of type '<CheckCoverage-request>"
  (cl:format cl:nil "sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image, which is 0 (black) for obstacles and 255 (white) for free space~%float32 map_resolution					# resolution of the given map, in [meter/cell]~%geometry_msgs/Pose map_origin			# the origin of the map, in [meter]~%geometry_msgs/Pose2D[] path				# check the coverage along this path of the robot center, in the world frame in [meter]~%geometry_msgs/Point32[] field_of_view	# the points that define the field of view of the robot, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]~%geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]~%float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]~%bool check_for_footprint				# determine, if the coverage check should be done for the footprint or the field of view~%bool check_number_of_coverages			# if set, the server returns a map that shows how often one pixel has been covered during the path, return format: 32bit single-channel image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCoverage-request)))
  "Returns full string definition for message of type 'CheckCoverage-request"
  (cl:format cl:nil "sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image, which is 0 (black) for obstacles and 255 (white) for free space~%float32 map_resolution					# resolution of the given map, in [meter/cell]~%geometry_msgs/Pose map_origin			# the origin of the map, in [meter]~%geometry_msgs/Pose2D[] path				# check the coverage along this path of the robot center, in the world frame in [meter]~%geometry_msgs/Point32[] field_of_view	# the points that define the field of view of the robot, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]~%geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]~%float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]~%bool check_for_footprint				# determine, if the coverage check should be done for the footprint or the field of view~%bool check_number_of_coverages			# if set, the server returns a map that shows how often one pixel has been covered during the path, return format: 32bit single-channel image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCoverage-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_map))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_origin))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'field_of_view) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'field_of_view_origin))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCoverage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCoverage-request
    (cl:cons ':input_map (input_map msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':map_origin (map_origin msg))
    (cl:cons ':path (path msg))
    (cl:cons ':field_of_view (field_of_view msg))
    (cl:cons ':field_of_view_origin (field_of_view_origin msg))
    (cl:cons ':coverage_radius (coverage_radius msg))
    (cl:cons ':check_for_footprint (check_for_footprint msg))
    (cl:cons ':check_number_of_coverages (check_number_of_coverages msg))
))
;//! \htmlinclude CheckCoverage-response.msg.html

(cl:defclass <CheckCoverage-response> (roslisp-msg-protocol:ros-message)
  ((coverage_map
    :reader coverage_map
    :initarg :coverage_map
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (number_of_coverage_image
    :reader number_of_coverage_image
    :initarg :number_of_coverage_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass CheckCoverage-response (<CheckCoverage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCoverage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCoverage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-srv:<CheckCoverage-response> is deprecated: use ipa_building_msgs-srv:CheckCoverage-response instead.")))

(cl:ensure-generic-function 'coverage_map-val :lambda-list '(m))
(cl:defmethod coverage_map-val ((m <CheckCoverage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:coverage_map-val is deprecated.  Use ipa_building_msgs-srv:coverage_map instead.")
  (coverage_map m))

(cl:ensure-generic-function 'number_of_coverage_image-val :lambda-list '(m))
(cl:defmethod number_of_coverage_image-val ((m <CheckCoverage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:number_of_coverage_image-val is deprecated.  Use ipa_building_msgs-srv:number_of_coverage_image instead.")
  (number_of_coverage_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCoverage-response>) ostream)
  "Serializes a message object of type '<CheckCoverage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coverage_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'number_of_coverage_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCoverage-response>) istream)
  "Deserializes a message object of type '<CheckCoverage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coverage_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'number_of_coverage_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCoverage-response>)))
  "Returns string type for a service object of type '<CheckCoverage-response>"
  "ipa_building_msgs/CheckCoverageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCoverage-response)))
  "Returns string type for a service object of type 'CheckCoverage-response"
  "ipa_building_msgs/CheckCoverageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCoverage-response>)))
  "Returns md5sum for a message object of type '<CheckCoverage-response>"
  "c39dded0eb0ee02116211ecd0f2054c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCoverage-response)))
  "Returns md5sum for a message object of type 'CheckCoverage-response"
  "c39dded0eb0ee02116211ecd0f2054c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCoverage-response>)))
  "Returns full string definition for message of type '<CheckCoverage-response>"
  (cl:format cl:nil "sensor_msgs/Image coverage_map			# the map that has the covered areas drawn in, with a value of 255, an 8bit single-channel image~%sensor_msgs/Image number_of_coverage_image	# the image that carries for each pixel the number of coverages when executing the path, 32bit single-channel image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCoverage-response)))
  "Returns full string definition for message of type 'CheckCoverage-response"
  (cl:format cl:nil "sensor_msgs/Image coverage_map			# the map that has the covered areas drawn in, with a value of 255, an 8bit single-channel image~%sensor_msgs/Image number_of_coverage_image	# the image that carries for each pixel the number of coverages when executing the path, 32bit single-channel image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCoverage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coverage_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'number_of_coverage_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCoverage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCoverage-response
    (cl:cons ':coverage_map (coverage_map msg))
    (cl:cons ':number_of_coverage_image (number_of_coverage_image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckCoverage)))
  'CheckCoverage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckCoverage)))
  'CheckCoverage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCoverage)))
  "Returns string type for a service object of type '<CheckCoverage>"
  "ipa_building_msgs/CheckCoverage")