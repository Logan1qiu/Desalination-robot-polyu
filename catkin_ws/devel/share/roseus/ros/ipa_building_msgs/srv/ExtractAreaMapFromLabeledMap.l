;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::ExtractAreaMapFromLabeledMap)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'ExtractAreaMapFromLabeledMap (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::EXTRACTAREAMAPFROMLABELEDMAP")
  (make-package "IPA_BUILDING_MSGS::EXTRACTAREAMAPFROMLABELEDMAP"))
(unless (find-package "IPA_BUILDING_MSGS::EXTRACTAREAMAPFROMLABELEDMAPREQUEST")
  (make-package "IPA_BUILDING_MSGS::EXTRACTAREAMAPFROMLABELEDMAPREQUEST"))
(unless (find-package "IPA_BUILDING_MSGS::EXTRACTAREAMAPFROMLABELEDMAPRESPONSE")
  (make-package "IPA_BUILDING_MSGS::EXTRACTAREAMAPFROMLABELEDMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest
  :super ros::object
  :slots (_segmented_map _segment_of_interest ))

(defmethod ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest
  (:init
   (&key
    ((:segmented_map __segmented_map) (instance sensor_msgs::Image :init))
    ((:segment_of_interest __segment_of_interest) 0)
    )
   (send-super :init)
   (setq _segmented_map __segmented_map)
   (setq _segment_of_interest (round __segment_of_interest))
   self)
  (:segmented_map
   (&rest __segmented_map)
   (if (keywordp (car __segmented_map))
       (send* _segmented_map __segmented_map)
     (progn
       (if __segmented_map (setq _segmented_map (car __segmented_map)))
       _segmented_map)))
  (:segment_of_interest
   (&optional __segment_of_interest)
   (if __segment_of_interest (setq _segment_of_interest __segment_of_interest)) _segment_of_interest)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _segmented_map
    (send _segmented_map :serialization-length)
    ;; int32 _segment_of_interest
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _segmented_map
       (send _segmented_map :serialize s)
     ;; int32 _segment_of_interest
       (write-long _segment_of_interest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _segmented_map
     (send _segmented_map :deserialize buf ptr-) (incf ptr- (send _segmented_map :serialization-length))
   ;; int32 _segment_of_interest
     (setq _segment_of_interest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse
  :super ros::object
  :slots (_segmented_area ))

(defmethod ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse
  (:init
   (&key
    ((:segmented_area __segmented_area) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _segmented_area __segmented_area)
   self)
  (:segmented_area
   (&rest __segmented_area)
   (if (keywordp (car __segmented_area))
       (send* _segmented_area __segmented_area)
     (progn
       (if __segmented_area (setq _segmented_area (car __segmented_area)))
       _segmented_area)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _segmented_area
    (send _segmented_area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _segmented_area
       (send _segmented_area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _segmented_area
     (send _segmented_area :deserialize buf ptr-) (incf ptr- (send _segmented_area :serialization-length))
   ;;
   self)
  )

(defclass ipa_building_msgs::ExtractAreaMapFromLabeledMap
  :super ros::object
  :slots ())

(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMap :md5sum-) "678bbdebce5d5e355861b28b37e6fe3c")
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMap :datatype-) "ipa_building_msgs/ExtractAreaMapFromLabeledMap")
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMap :request) ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest)
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMap :response) ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse)

(defmethod ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest
  (:response () (instance ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse :init)))

(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest :md5sum-) "678bbdebce5d5e355861b28b37e6fe3c")
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest :datatype-) "ipa_building_msgs/ExtractAreaMapFromLabeledMapRequest")
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMapRequest :definition-)
      "# The request message provides a segmented map which consists of cells with label 0 for inaccessible areas and other number from 1 to N
# for labeling membership with one of the N segmented areas.
# The return message shall deliver the same map but with only one area (segment_of_interest) labeled as 255 and the remainder labeled
# as inaccessible with 0.

sensor_msgs/Image segmented_map		# a map segmented into N areas which carry the respective segment number in every pixel cell,
									# format 32SC1, room labels from 1 to N, 0 represents inaccessible cells (e.g. walls)
int32 segment_of_interest		# the specific area label of the area of which a map shall be created


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
---

sensor_msgs/Image segmented_area	# a map that only contains the area which is labeled with segment_of_interest in segmented_map,
									# the parts of that area are labeled as 255 in this map and the remainder is labeled as inaccessible with 0
									# data type is a 8bit single-channel image (format 8UC1)

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
")

(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse :md5sum-) "678bbdebce5d5e355861b28b37e6fe3c")
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse :datatype-) "ipa_building_msgs/ExtractAreaMapFromLabeledMapResponse")
(setf (get ipa_building_msgs::ExtractAreaMapFromLabeledMapResponse :definition-)
      "# The request message provides a segmented map which consists of cells with label 0 for inaccessible areas and other number from 1 to N
# for labeling membership with one of the N segmented areas.
# The return message shall deliver the same map but with only one area (segment_of_interest) labeled as 255 and the remainder labeled
# as inaccessible with 0.

sensor_msgs/Image segmented_map		# a map segmented into N areas which carry the respective segment number in every pixel cell,
									# format 32SC1, room labels from 1 to N, 0 represents inaccessible cells (e.g. walls)
int32 segment_of_interest		# the specific area label of the area of which a map shall be created


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
---

sensor_msgs/Image segmented_area	# a map that only contains the area which is labeled with segment_of_interest in segmented_map,
									# the parts of that area are labeled as 255 in this map and the remainder is labeled as inaccessible with 0
									# data type is a 8bit single-channel image (format 8UC1)

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
")



(provide :ipa_building_msgs/ExtractAreaMapFromLabeledMap "678bbdebce5d5e355861b28b37e6fe3c")


