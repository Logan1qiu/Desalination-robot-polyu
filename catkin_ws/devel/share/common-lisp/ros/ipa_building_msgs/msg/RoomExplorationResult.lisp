; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-msg)


;//! \htmlinclude RoomExplorationResult.msg.html

(cl:defclass <RoomExplorationResult> (roslisp-msg-protocol:ros-message)
  ((coverage_path
    :reader coverage_path
    :initarg :coverage_path
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (coverage_path_pose_stamped
    :reader coverage_path_pose_stamped
    :initarg :coverage_path_pose_stamped
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass RoomExplorationResult (<RoomExplorationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoomExplorationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoomExplorationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-msg:<RoomExplorationResult> is deprecated: use ipa_building_msgs-msg:RoomExplorationResult instead.")))

(cl:ensure-generic-function 'coverage_path-val :lambda-list '(m))
(cl:defmethod coverage_path-val ((m <RoomExplorationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:coverage_path-val is deprecated.  Use ipa_building_msgs-msg:coverage_path instead.")
  (coverage_path m))

(cl:ensure-generic-function 'coverage_path_pose_stamped-val :lambda-list '(m))
(cl:defmethod coverage_path_pose_stamped-val ((m <RoomExplorationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:coverage_path_pose_stamped-val is deprecated.  Use ipa_building_msgs-msg:coverage_path_pose_stamped instead.")
  (coverage_path_pose_stamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoomExplorationResult>) ostream)
  "Serializes a message object of type '<RoomExplorationResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coverage_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'coverage_path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coverage_path_pose_stamped))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'coverage_path_pose_stamped))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoomExplorationResult>) istream)
  "Deserializes a message object of type '<RoomExplorationResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coverage_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coverage_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coverage_path_pose_stamped) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coverage_path_pose_stamped)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoomExplorationResult>)))
  "Returns string type for a message object of type '<RoomExplorationResult>"
  "ipa_building_msgs/RoomExplorationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoomExplorationResult)))
  "Returns string type for a message object of type 'RoomExplorationResult"
  "ipa_building_msgs/RoomExplorationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoomExplorationResult>)))
  "Returns md5sum for a message object of type '<RoomExplorationResult>"
  "12d0bcf4cde501321f572592c0c514da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoomExplorationResult)))
  "Returns md5sum for a message object of type 'RoomExplorationResult"
  "12d0bcf4cde501321f572592c0c514da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoomExplorationResult>)))
  "Returns full string definition for message of type '<RoomExplorationResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result definition~%geometry_msgs/Pose2D[] coverage_path			# when the server should return the coverage path, this is done returning the points in an array that shows the order of visiting~%geometry_msgs/PoseStamped[] coverage_path_pose_stamped			# (same content as coverage_path but different format) when the server should return the coverage path, this is done returning the points in an array that shows the order of visiting~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoomExplorationResult)))
  "Returns full string definition for message of type 'RoomExplorationResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result definition~%geometry_msgs/Pose2D[] coverage_path			# when the server should return the coverage path, this is done returning the points in an array that shows the order of visiting~%geometry_msgs/PoseStamped[] coverage_path_pose_stamped			# (same content as coverage_path but different format) when the server should return the coverage path, this is done returning the points in an array that shows the order of visiting~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoomExplorationResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coverage_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coverage_path_pose_stamped) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoomExplorationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'RoomExplorationResult
    (cl:cons ':coverage_path (coverage_path msg))
    (cl:cons ':coverage_path_pose_stamped (coverage_path_pose_stamped msg))
))
