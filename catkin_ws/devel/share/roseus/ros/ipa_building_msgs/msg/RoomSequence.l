;; Auto-generated. Do not edit!


(when (boundp 'ipa_building_msgs::RoomSequence)
  (if (not (find-package "IPA_BUILDING_MSGS"))
    (make-package "IPA_BUILDING_MSGS"))
  (shadow 'RoomSequence (find-package "IPA_BUILDING_MSGS")))
(unless (find-package "IPA_BUILDING_MSGS::ROOMSEQUENCE")
  (make-package "IPA_BUILDING_MSGS::ROOMSEQUENCE"))

(in-package "ROS")
;;//! \htmlinclude RoomSequence.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ipa_building_msgs::RoomSequence
  :super ros::object
  :slots (_room_indices _checkpoint_position_in_pixel _checkpoint_position_in_meter ))

(defmethod ipa_building_msgs::RoomSequence
  (:init
   (&key
    ((:room_indices __room_indices) (make-array 0 :initial-element 0 :element-type :integer))
    ((:checkpoint_position_in_pixel __checkpoint_position_in_pixel) (instance geometry_msgs::Point32 :init))
    ((:checkpoint_position_in_meter __checkpoint_position_in_meter) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _room_indices __room_indices)
   (setq _checkpoint_position_in_pixel __checkpoint_position_in_pixel)
   (setq _checkpoint_position_in_meter __checkpoint_position_in_meter)
   self)
  (:room_indices
   (&optional __room_indices)
   (if __room_indices (setq _room_indices __room_indices)) _room_indices)
  (:checkpoint_position_in_pixel
   (&rest __checkpoint_position_in_pixel)
   (if (keywordp (car __checkpoint_position_in_pixel))
       (send* _checkpoint_position_in_pixel __checkpoint_position_in_pixel)
     (progn
       (if __checkpoint_position_in_pixel (setq _checkpoint_position_in_pixel (car __checkpoint_position_in_pixel)))
       _checkpoint_position_in_pixel)))
  (:checkpoint_position_in_meter
   (&rest __checkpoint_position_in_meter)
   (if (keywordp (car __checkpoint_position_in_meter))
       (send* _checkpoint_position_in_meter __checkpoint_position_in_meter)
     (progn
       (if __checkpoint_position_in_meter (setq _checkpoint_position_in_meter (car __checkpoint_position_in_meter)))
       _checkpoint_position_in_meter)))
  (:serialization-length
   ()
   (+
    ;; uint32[] _room_indices
    (* 4    (length _room_indices)) 4
    ;; geometry_msgs/Point32 _checkpoint_position_in_pixel
    (send _checkpoint_position_in_pixel :serialization-length)
    ;; geometry_msgs/Point32 _checkpoint_position_in_meter
    (send _checkpoint_position_in_meter :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _room_indices
     (write-long (length _room_indices) s)
     (dotimes (i (length _room_indices))
       (write-long (elt _room_indices i) s)
       )
     ;; geometry_msgs/Point32 _checkpoint_position_in_pixel
       (send _checkpoint_position_in_pixel :serialize s)
     ;; geometry_msgs/Point32 _checkpoint_position_in_meter
       (send _checkpoint_position_in_meter :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _room_indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _room_indices (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _room_indices i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point32 _checkpoint_position_in_pixel
     (send _checkpoint_position_in_pixel :deserialize buf ptr-) (incf ptr- (send _checkpoint_position_in_pixel :serialization-length))
   ;; geometry_msgs/Point32 _checkpoint_position_in_meter
     (send _checkpoint_position_in_meter :deserialize buf ptr-) (incf ptr- (send _checkpoint_position_in_meter :serialization-length))
   ;;
   self)
  )

(setf (get ipa_building_msgs::RoomSequence :md5sum-) "5409a76f4f210c24eb6c06e73dcdb711")
(setf (get ipa_building_msgs::RoomSequence :datatype-) "ipa_building_msgs/RoomSequence")
(setf (get ipa_building_msgs::RoomSequence :definition-)
      "uint32[] room_indices		# indices of those rooms that belong to one group (connected to a checkpoint,
							# i.e. the clique of rooms close [in terms of robot driving distance] to each other),
							# indices should be ordered in optimized traveling salesman sequence
geometry_msgs/Point32 checkpoint_position_in_pixel			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in pixel]
geometry_msgs/Point32 checkpoint_position_in_meter			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in meter]
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
float32 z
")



(provide :ipa_building_msgs/RoomSequence "5409a76f4f210c24eb6c06e73dcdb711")


