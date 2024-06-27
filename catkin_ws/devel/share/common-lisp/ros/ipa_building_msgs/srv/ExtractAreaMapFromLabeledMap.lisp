; Auto-generated. Do not edit!


(cl:in-package ipa_building_msgs-srv)


;//! \htmlinclude ExtractAreaMapFromLabeledMap-request.msg.html

(cl:defclass <ExtractAreaMapFromLabeledMap-request> (roslisp-msg-protocol:ros-message)
  ((segmented_map
    :reader segmented_map
    :initarg :segmented_map
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (segment_of_interest
    :reader segment_of_interest
    :initarg :segment_of_interest
    :type cl:integer
    :initform 0))
)

(cl:defclass ExtractAreaMapFromLabeledMap-request (<ExtractAreaMapFromLabeledMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractAreaMapFromLabeledMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractAreaMapFromLabeledMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-srv:<ExtractAreaMapFromLabeledMap-request> is deprecated: use ipa_building_msgs-srv:ExtractAreaMapFromLabeledMap-request instead.")))

(cl:ensure-generic-function 'segmented_map-val :lambda-list '(m))
(cl:defmethod segmented_map-val ((m <ExtractAreaMapFromLabeledMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:segmented_map-val is deprecated.  Use ipa_building_msgs-srv:segmented_map instead.")
  (segmented_map m))

(cl:ensure-generic-function 'segment_of_interest-val :lambda-list '(m))
(cl:defmethod segment_of_interest-val ((m <ExtractAreaMapFromLabeledMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:segment_of_interest-val is deprecated.  Use ipa_building_msgs-srv:segment_of_interest instead.")
  (segment_of_interest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractAreaMapFromLabeledMap-request>) ostream)
  "Serializes a message object of type '<ExtractAreaMapFromLabeledMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmented_map) ostream)
  (cl:let* ((signed (cl:slot-value msg 'segment_of_interest)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractAreaMapFromLabeledMap-request>) istream)
  "Deserializes a message object of type '<ExtractAreaMapFromLabeledMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmented_map) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_of_interest) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractAreaMapFromLabeledMap-request>)))
  "Returns string type for a service object of type '<ExtractAreaMapFromLabeledMap-request>"
  "ipa_building_msgs/ExtractAreaMapFromLabeledMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractAreaMapFromLabeledMap-request)))
  "Returns string type for a service object of type 'ExtractAreaMapFromLabeledMap-request"
  "ipa_building_msgs/ExtractAreaMapFromLabeledMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractAreaMapFromLabeledMap-request>)))
  "Returns md5sum for a message object of type '<ExtractAreaMapFromLabeledMap-request>"
  "678bbdebce5d5e355861b28b37e6fe3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractAreaMapFromLabeledMap-request)))
  "Returns md5sum for a message object of type 'ExtractAreaMapFromLabeledMap-request"
  "678bbdebce5d5e355861b28b37e6fe3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractAreaMapFromLabeledMap-request>)))
  "Returns full string definition for message of type '<ExtractAreaMapFromLabeledMap-request>"
  (cl:format cl:nil "# The request message provides a segmented map which consists of cells with label 0 for inaccessible areas and other number from 1 to N~%# for labeling membership with one of the N segmented areas.~%# The return message shall deliver the same map but with only one area (segment_of_interest) labeled as 255 and the remainder labeled~%# as inaccessible with 0.~%~%sensor_msgs/Image segmented_map		# a map segmented into N areas which carry the respective segment number in every pixel cell,~%									# format 32SC1, room labels from 1 to N, 0 represents inaccessible cells (e.g. walls)~%int32 segment_of_interest		# the specific area label of the area of which a map shall be created~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractAreaMapFromLabeledMap-request)))
  "Returns full string definition for message of type 'ExtractAreaMapFromLabeledMap-request"
  (cl:format cl:nil "# The request message provides a segmented map which consists of cells with label 0 for inaccessible areas and other number from 1 to N~%# for labeling membership with one of the N segmented areas.~%# The return message shall deliver the same map but with only one area (segment_of_interest) labeled as 255 and the remainder labeled~%# as inaccessible with 0.~%~%sensor_msgs/Image segmented_map		# a map segmented into N areas which carry the respective segment number in every pixel cell,~%									# format 32SC1, room labels from 1 to N, 0 represents inaccessible cells (e.g. walls)~%int32 segment_of_interest		# the specific area label of the area of which a map shall be created~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractAreaMapFromLabeledMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmented_map))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractAreaMapFromLabeledMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractAreaMapFromLabeledMap-request
    (cl:cons ':segmented_map (segmented_map msg))
    (cl:cons ':segment_of_interest (segment_of_interest msg))
))
;//! \htmlinclude ExtractAreaMapFromLabeledMap-response.msg.html

(cl:defclass <ExtractAreaMapFromLabeledMap-response> (roslisp-msg-protocol:ros-message)
  ((segmented_area
    :reader segmented_area
    :initarg :segmented_area
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass ExtractAreaMapFromLabeledMap-response (<ExtractAreaMapFromLabeledMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractAreaMapFromLabeledMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractAreaMapFromLabeledMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ipa_building_msgs-srv:<ExtractAreaMapFromLabeledMap-response> is deprecated: use ipa_building_msgs-srv:ExtractAreaMapFromLabeledMap-response instead.")))

(cl:ensure-generic-function 'segmented_area-val :lambda-list '(m))
(cl:defmethod segmented_area-val ((m <ExtractAreaMapFromLabeledMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ipa_building_msgs-srv:segmented_area-val is deprecated.  Use ipa_building_msgs-srv:segmented_area instead.")
  (segmented_area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractAreaMapFromLabeledMap-response>) ostream)
  "Serializes a message object of type '<ExtractAreaMapFromLabeledMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmented_area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractAreaMapFromLabeledMap-response>) istream)
  "Deserializes a message object of type '<ExtractAreaMapFromLabeledMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmented_area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractAreaMapFromLabeledMap-response>)))
  "Returns string type for a service object of type '<ExtractAreaMapFromLabeledMap-response>"
  "ipa_building_msgs/ExtractAreaMapFromLabeledMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractAreaMapFromLabeledMap-response)))
  "Returns string type for a service object of type 'ExtractAreaMapFromLabeledMap-response"
  "ipa_building_msgs/ExtractAreaMapFromLabeledMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractAreaMapFromLabeledMap-response>)))
  "Returns md5sum for a message object of type '<ExtractAreaMapFromLabeledMap-response>"
  "678bbdebce5d5e355861b28b37e6fe3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractAreaMapFromLabeledMap-response)))
  "Returns md5sum for a message object of type 'ExtractAreaMapFromLabeledMap-response"
  "678bbdebce5d5e355861b28b37e6fe3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractAreaMapFromLabeledMap-response>)))
  "Returns full string definition for message of type '<ExtractAreaMapFromLabeledMap-response>"
  (cl:format cl:nil "~%sensor_msgs/Image segmented_area	# a map that only contains the area which is labeled with segment_of_interest in segmented_map,~%									# the parts of that area are labeled as 255 in this map and the remainder is labeled as inaccessible with 0~%									# data type is a 8bit single-channel image (format 8UC1)~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractAreaMapFromLabeledMap-response)))
  "Returns full string definition for message of type 'ExtractAreaMapFromLabeledMap-response"
  (cl:format cl:nil "~%sensor_msgs/Image segmented_area	# a map that only contains the area which is labeled with segment_of_interest in segmented_map,~%									# the parts of that area are labeled as 255 in this map and the remainder is labeled as inaccessible with 0~%									# data type is a 8bit single-channel image (format 8UC1)~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractAreaMapFromLabeledMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmented_area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractAreaMapFromLabeledMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractAreaMapFromLabeledMap-response
    (cl:cons ':segmented_area (segmented_area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExtractAreaMapFromLabeledMap)))
  'ExtractAreaMapFromLabeledMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExtractAreaMapFromLabeledMap)))
  'ExtractAreaMapFromLabeledMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractAreaMapFromLabeledMap)))
  "Returns string type for a service object of type '<ExtractAreaMapFromLabeledMap>"
  "ipa_building_msgs/ExtractAreaMapFromLabeledMap")