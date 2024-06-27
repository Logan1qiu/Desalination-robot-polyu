; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-msg)


;//! \htmlinclude RoomInformation.msg.html

(cl:defclass <RoomInformation> (roslisp-msg-protocol:ros-message)
  ((room_min_max
    :reader room_min_max
    :initarg :room_min_max
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (room_center
    :reader room_center
    :initarg :room_center
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass RoomInformation (<RoomInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoomInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoomInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-msg:<RoomInformation> is deprecated: use ipa_building_msgs-msg:RoomInformation instead.")))

(cl:ensure-generic-function 'room_min_max-val :lambda-list '(m))
(cl:defmethod room_min_max-val ((m <RoomInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_min_max-val is deprecated.  Use ipa_building_msgs-msg:room_min_max instead.")
  (room_min_max m))

(cl:ensure-generic-function 'room_center-val :lambda-list '(m))
(cl:defmethod room_center-val ((m <RoomInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-msg:room_center-val is deprecated.  Use ipa_building_msgs-msg:room_center instead.")
  (room_center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoomInformation>) ostream)
  "Serializes a message object of type '<RoomInformation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'room_min_max) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'room_center) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoomInformation>) istream)
  "Deserializes a message object of type '<RoomInformation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'room_min_max) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'room_center) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoomInformation>)))
  "Returns string type for a message object of type '<RoomInformation>"
  "ipa_building_msgs/RoomInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoomInformation)))
  "Returns string type for a message object of type 'RoomInformation"
  "ipa_building_msgs/RoomInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoomInformation>)))
  "Returns md5sum for a message object of type '<RoomInformation>"
  "c095dc11b0eae6e6ce775e203036a201")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoomInformation)))
  "Returns md5sum for a message object of type 'RoomInformation"
  "c095dc11b0eae6e6ce775e203036a201")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoomInformation>)))
  "Returns full string definition for message of type '<RoomInformation>"
  (cl:format cl:nil "geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms~%geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoomInformation)))
  "Returns full string definition for message of type 'RoomInformation"
  (cl:format cl:nil "geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms~%geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoomInformation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'room_min_max))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'room_center))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoomInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'RoomInformation
    (cl:cons ':room_min_max (room_min_max msg))
    (cl:cons ':room_center (room_center msg))
))
