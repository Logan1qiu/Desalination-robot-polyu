;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::CheckCoverage)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'CheckCoverage (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::CHECKCOVERAGE")
  (make-package "IPA_BUILDING_MSGS::CHECKCOVERAGE"))
(unless (find-package "IPA_BUILDING_MSGS::CHECKCOVERAGEREQUEST")
  (make-package "IPA_BUILDING_MSGS::CHECKCOVERAGEREQUEST"))
(unless (find-package "IPA_BUILDING_MSGS::CHECKCOVERAGERESPONSE")
  (make-package "IPA_BUILDING_MSGS::CHECKCOVERAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ipa_building_msgs::CheckCoverageRequest
  :super ros::object
  :slots (_input_map _map_resolution _map_origin _path _field_of_view _field_of_view_origin _coverage_radius _check_for_footprint _check_number_of_coverages ))

(defmethod ipa_building_msgs::CheckCoverageRequest
  (:init
   (&key
    ((:input_map __input_map) (instance sensor_msgs::Image :init))
    ((:map_resolution __map_resolution) 0.0)
    ((:map_origin __map_origin) (instance geometry_msgs::Pose :init))
    ((:path __path) ())
    ((:field_of_view __field_of_view) ())
    ((:field_of_view_origin __field_of_view_origin) (instance geometry_msgs::Point32 :init))
    ((:coverage_radius __coverage_radius) 0.0)
    ((:check_for_footprint __check_for_footprint) nil)
    ((:check_number_of_coverages __check_number_of_coverages) nil)
    )
   (send-super :init)
   (setq _input_map __input_map)
   (setq _map_resolution (float __map_resolution))
   (setq _map_origin __map_origin)
   (setq _path __path)
   (setq _field_of_view __field_of_view)
   (setq _field_of_view_origin __field_of_view_origin)
   (setq _coverage_radius (float __coverage_radius))
   (setq _check_for_footprint __check_for_footprint)
   (setq _check_number_of_coverages __check_number_of_coverages)
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
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
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
  (:coverage_radius
   (&optional __coverage_radius)
   (if __coverage_radius (setq _coverage_radius __coverage_radius)) _coverage_radius)
  (:check_for_footprint
   (&optional (__check_for_footprint :null))
   (if (not (eq __check_for_footprint :null)) (setq _check_for_footprint __check_for_footprint)) _check_for_footprint)
  (:check_number_of_coverages
   (&optional (__check_number_of_coverages :null))
   (if (not (eq __check_number_of_coverages :null)) (setq _check_number_of_coverages __check_number_of_coverages)) _check_number_of_coverages)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _input_map
    (send _input_map :serialization-length)
    ;; float32 _map_resolution
    4
    ;; geometry_msgs/Pose _map_origin
    (send _map_origin :serialization-length)
    ;; geometry_msgs/Pose2D[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; geometry_msgs/Point32[] _field_of_view
    (apply #'+ (send-all _field_of_view :serialization-length)) 4
    ;; geometry_msgs/Point32 _field_of_view_origin
    (send _field_of_view_origin :serialization-length)
    ;; float32 _coverage_radius
    4
    ;; bool _check_for_footprint
    1
    ;; bool _check_number_of_coverages
    1
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
     ;; geometry_msgs/Pose2D[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32[] _field_of_view
     (write-long (length _field_of_view) s)
     (dolist (elem _field_of_view)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32 _field_of_view_origin
       (send _field_of_view_origin :serialize s)
     ;; float32 _coverage_radius
       (sys::poke _coverage_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _check_for_footprint
       (if _check_for_footprint (write-byte -1 s) (write-byte 0 s))
     ;; bool _check_number_of_coverages
       (if _check_number_of_coverages (write-byte -1 s) (write-byte 0 s))
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
   ;; geometry_msgs/Pose2D[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32[] _field_of_view
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _field_of_view (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _field_of_view)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32 _field_of_view_origin
     (send _field_of_view_origin :deserialize buf ptr-) (incf ptr- (send _field_of_view_origin :serialization-length))
   ;; float32 _coverage_radius
     (setq _coverage_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _check_for_footprint
     (setq _check_for_footprint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _check_number_of_coverages
     (setq _check_number_of_coverages (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ipa_building_msgs::CheckCoverageResponse
  :super ros::object
  :slots (_coverage_map _number_of_coverage_image ))

(defmethod ipa_building_msgs::CheckCoverageResponse
  (:init
   (&key
    ((:coverage_map __coverage_map) (instance sensor_msgs::Image :init))
    ((:number_of_coverage_image __number_of_coverage_image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _coverage_map __coverage_map)
   (setq _number_of_coverage_image __number_of_coverage_image)
   self)
  (:coverage_map
   (&rest __coverage_map)
   (if (keywordp (car __coverage_map))
       (send* _coverage_map __coverage_map)
     (progn
       (if __coverage_map (setq _coverage_map (car __coverage_map)))
       _coverage_map)))
  (:number_of_coverage_image
   (&rest __number_of_coverage_image)
   (if (keywordp (car __number_of_coverage_image))
       (send* _number_of_coverage_image __number_of_coverage_image)
     (progn
       (if __number_of_coverage_image (setq _number_of_coverage_image (car __number_of_coverage_image)))
       _number_of_coverage_image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _coverage_map
    (send _coverage_map :serialization-length)
    ;; sensor_msgs/Image _number_of_coverage_image
    (send _number_of_coverage_image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _coverage_map
       (send _coverage_map :serialize s)
     ;; sensor_msgs/Image _number_of_coverage_image
       (send _number_of_coverage_image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _coverage_map
     (send _coverage_map :deserialize buf ptr-) (incf ptr- (send _coverage_map :serialization-length))
   ;; sensor_msgs/Image _number_of_coverage_image
     (send _number_of_coverage_image :deserialize buf ptr-) (incf ptr- (send _number_of_coverage_image :serialization-length))
   ;;
   self)
  )

(defclass ipa_building_msgs::CheckCoverage
  :super ros::object
  :slots ())

(setf (get ipa_building_msgs::CheckCoverage :md5sum-) "c39dded0eb0ee02116211ecd0f2054c1")
(setf (get ipa_building_msgs::CheckCoverage :datatype-) "ipa_building_msgs/CheckCoverage")
(setf (get ipa_building_msgs::CheckCoverage :request) ipa_building_msgs::CheckCoverageRequest)
(setf (get ipa_building_msgs::CheckCoverage :response) ipa_building_msgs::CheckCoverageResponse)

(defmethod ipa_building_msgs::CheckCoverageRequest
  (:response () (instance ipa_building_msgs::CheckCoverageResponse :init)))

(setf (get ipa_building_msgs::CheckCoverageRequest :md5sum-) "c39dded0eb0ee02116211ecd0f2054c1")
(setf (get ipa_building_msgs::CheckCoverageRequest :datatype-) "ipa_building_msgs/CheckCoverageRequest")
(setf (get ipa_building_msgs::CheckCoverageRequest :definition-)
      "sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image, which is 0 (black) for obstacles and 255 (white) for free space
float32 map_resolution					# resolution of the given map, in [meter/cell]
geometry_msgs/Pose map_origin			# the origin of the map, in [meter]
geometry_msgs/Pose2D[] path				# check the coverage along this path of the robot center, in the world frame in [meter]
geometry_msgs/Point32[] field_of_view	# the points that define the field of view of the robot, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]
bool check_for_footprint				# determine, if the coverage check should be done for the footprint or the field of view
bool check_number_of_coverages			# if set, the server returns a map that shows how often one pixel has been covered during the path, return format: 32bit single-channel image

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

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
---
sensor_msgs/Image coverage_map			# the map that has the covered areas drawn in, with a value of 255, an 8bit single-channel image
sensor_msgs/Image number_of_coverage_image	# the image that carries for each pixel the number of coverages when executing the path, 32bit single-channel image


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

(setf (get ipa_building_msgs::CheckCoverageResponse :md5sum-) "c39dded0eb0ee02116211ecd0f2054c1")
(setf (get ipa_building_msgs::CheckCoverageResponse :datatype-) "ipa_building_msgs/CheckCoverageResponse")
(setf (get ipa_building_msgs::CheckCoverageResponse :definition-)
      "sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image, which is 0 (black) for obstacles and 255 (white) for free space
float32 map_resolution					# resolution of the given map, in [meter/cell]
geometry_msgs/Pose map_origin			# the origin of the map, in [meter]
geometry_msgs/Pose2D[] path				# check the coverage along this path of the robot center, in the world frame in [meter]
geometry_msgs/Point32[] field_of_view	# the points that define the field of view of the robot, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]
bool check_for_footprint				# determine, if the coverage check should be done for the footprint or the field of view
bool check_number_of_coverages			# if set, the server returns a map that shows how often one pixel has been covered during the path, return format: 32bit single-channel image

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

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
---
sensor_msgs/Image coverage_map			# the map that has the covered areas drawn in, with a value of 255, an 8bit single-channel image
sensor_msgs/Image number_of_coverage_image	# the image that carries for each pixel the number of coverages when executing the path, 32bit single-channel image


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



(provide :ipa_building_msgs/CheckCoverage "c39dded0eb0ee02116211ecd0f2054c1")


