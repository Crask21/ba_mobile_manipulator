;; Auto-generated. Do not edit!


(when (boundp 'costmap_prohibition_layer::AddProhibitedPoints)
  (if (not (find-package "COSTMAP_PROHIBITION_LAYER"))
    (make-package "COSTMAP_PROHIBITION_LAYER"))
  (shadow 'AddProhibitedPoints (find-package "COSTMAP_PROHIBITION_LAYER")))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::ADDPROHIBITEDPOINTS")
  (make-package "COSTMAP_PROHIBITION_LAYER::ADDPROHIBITEDPOINTS"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::ADDPROHIBITEDPOINTSREQUEST")
  (make-package "COSTMAP_PROHIBITION_LAYER::ADDPROHIBITEDPOINTSREQUEST"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::ADDPROHIBITEDPOINTSRESPONSE")
  (make-package "COSTMAP_PROHIBITION_LAYER::ADDPROHIBITEDPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass costmap_prohibition_layer::AddProhibitedPointsRequest
  :super ros::object
  :slots (_polygons ))

(defmethod costmap_prohibition_layer::AddProhibitedPointsRequest
  (:init
   (&key
    ((:polygons __polygons) (instance geometry_msgs::Polygon :init))
    )
   (send-super :init)
   (setq _polygons __polygons)
   self)
  (:polygons
   (&rest __polygons)
   (if (keywordp (car __polygons))
       (send* _polygons __polygons)
     (progn
       (if __polygons (setq _polygons (car __polygons)))
       _polygons)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Polygon _polygons
    (send _polygons :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Polygon _polygons
       (send _polygons :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Polygon _polygons
     (send _polygons :deserialize buf ptr-) (incf ptr- (send _polygons :serialization-length))
   ;;
   self)
  )

(defclass costmap_prohibition_layer::AddProhibitedPointsResponse
  :super ros::object
  :slots (_msg ))

(defmethod costmap_prohibition_layer::AddProhibitedPointsResponse
  (:init
   (&key
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _msg (string __msg))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass costmap_prohibition_layer::AddProhibitedPoints
  :super ros::object
  :slots ())

(setf (get costmap_prohibition_layer::AddProhibitedPoints :md5sum-) "d58bd181a40e77cd6f8dfb61f5bc4f85")
(setf (get costmap_prohibition_layer::AddProhibitedPoints :datatype-) "costmap_prohibition_layer/AddProhibitedPoints")
(setf (get costmap_prohibition_layer::AddProhibitedPoints :request) costmap_prohibition_layer::AddProhibitedPointsRequest)
(setf (get costmap_prohibition_layer::AddProhibitedPoints :response) costmap_prohibition_layer::AddProhibitedPointsResponse)

(defmethod costmap_prohibition_layer::AddProhibitedPointsRequest
  (:response () (instance costmap_prohibition_layer::AddProhibitedPointsResponse :init)))

(setf (get costmap_prohibition_layer::AddProhibitedPointsRequest :md5sum-) "d58bd181a40e77cd6f8dfb61f5bc4f85")
(setf (get costmap_prohibition_layer::AddProhibitedPointsRequest :datatype-) "costmap_prohibition_layer/AddProhibitedPointsRequest")
(setf (get costmap_prohibition_layer::AddProhibitedPointsRequest :definition-)
      "geometry_msgs/Polygon polygons

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

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
string msg

")

(setf (get costmap_prohibition_layer::AddProhibitedPointsResponse :md5sum-) "d58bd181a40e77cd6f8dfb61f5bc4f85")
(setf (get costmap_prohibition_layer::AddProhibitedPointsResponse :datatype-) "costmap_prohibition_layer/AddProhibitedPointsResponse")
(setf (get costmap_prohibition_layer::AddProhibitedPointsResponse :definition-)
      "geometry_msgs/Polygon polygons

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

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
string msg

")



(provide :costmap_prohibition_layer/AddProhibitedPoints "d58bd181a40e77cd6f8dfb61f5bc4f85")


