; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-msg)


;//! \htmlinclude RoomSequence.msg.html

(cl:defclass <RoomSequence> (roslisp-msg-protocol:ros-message)
  ((room_indices
    :reader room_indices
    :initarg :room_indices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (checkpoint_position_in_pixel
    :reader checkpoint_position_in_pixel
    :initarg :checkpoint_position_in_pixel
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (checkpoint_position_in_meter
    :reader checkpoint_position_in_meter
    :initarg :checkpoint_position_in_meter
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass RoomSequence (<RoomSequence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoomSequence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoomSequence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-msg:<RoomSequence> is deprecated: use ipa_building_msgs-msg:RoomSequence instead.")))

(cl:ensure-generic-function 'room_indices-val :lambda-list '(m))
(cl:defmethod room_indices-val ((m <RoomSequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_indices-val is deprecated.  Use ipa_building_msgs-msg:room_indices instead.")
  (room_indices m))

(cl:ensure-generic-function 'checkpoint_position_in_pixel-val :lambda-list '(m))
(cl:defmethod checkpoint_position_in_pixel-val ((m <RoomSequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:checkpoint_position_in_pixel-val is deprecated.  Use ipa_building_msgs-msg:checkpoint_position_in_pixel instead.")
  (checkpoint_position_in_pixel m))

(cl:ensure-generic-function 'checkpoint_position_in_meter-val :lambda-list '(m))
(cl:defmethod checkpoint_position_in_meter-val ((m <RoomSequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:checkpoint_position_in_meter-val is deprecated.  Use ipa_building_msgs-msg:checkpoint_position_in_meter instead.")
  (checkpoint_position_in_meter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoomSequence>) ostream)
  "Serializes a message object of type '<RoomSequence>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'room_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'room_indices))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'checkpoint_position_in_pixel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'checkpoint_position_in_meter) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoomSequence>) istream)
  "Deserializes a message object of type '<RoomSequence>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'room_indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'room_indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'checkpoint_position_in_pixel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'checkpoint_position_in_meter) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoomSequence>)))
  "Returns string type for a message object of type '<RoomSequence>"
  "ipa_building_msgs/RoomSequence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoomSequence)))
  "Returns string type for a message object of type 'RoomSequence"
  "ipa_building_msgs/RoomSequence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoomSequence>)))
  "Returns md5sum for a message object of type '<RoomSequence>"
  "5409a76f4f210c24eb6c06e73dcdb711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoomSequence)))
  "Returns md5sum for a message object of type 'RoomSequence"
  "5409a76f4f210c24eb6c06e73dcdb711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoomSequence>)))
  "Returns full string definition for message of type '<RoomSequence>"
  (cl:format cl:nil "uint32[] room_indices		# indices of those rooms that belong to one group (connected to a checkpoint,~%							# i.e. the clique of rooms close [in terms of robot driving distance] to each other),~%							# indices should be ordered in optimized traveling salesman sequence~%geometry_msgs/Point32 checkpoint_position_in_pixel			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in pixel]~%geometry_msgs/Point32 checkpoint_position_in_meter			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in meter]~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoomSequence)))
  "Returns full string definition for message of type 'RoomSequence"
  (cl:format cl:nil "uint32[] room_indices		# indices of those rooms that belong to one group (connected to a checkpoint,~%							# i.e. the clique of rooms close [in terms of robot driving distance] to each other),~%							# indices should be ordered in optimized traveling salesman sequence~%geometry_msgs/Point32 checkpoint_position_in_pixel			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in pixel]~%geometry_msgs/Point32 checkpoint_position_in_meter			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in meter]~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoomSequence>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'room_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'checkpoint_position_in_pixel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'checkpoint_position_in_meter))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoomSequence>))
  "Converts a ROS message object to a list"
  (cl:list 'RoomSequence
    (cl:cons ':room_indices (room_indices msg))
    (cl:cons ':checkpoint_position_in_pixel (checkpoint_position_in_pixel msg))
    (cl:cons ':checkpoint_position_in_meter (checkpoint_position_in_meter msg))
))
