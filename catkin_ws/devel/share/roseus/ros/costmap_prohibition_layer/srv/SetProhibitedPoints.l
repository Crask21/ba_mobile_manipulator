;; Auto-generated. Do not edit!


(when (boundp 'costmap_prohibition_layer::SetProhibitedPoints)
  (if (not (find-package "COSTMAP_PROHIBITION_LAYER"))
    (make-package "COSTMAP_PROHIBITION_LAYER"))
  (shadow 'SetProhibitedPoints (find-package "COSTMAP_PROHIBITION_LAYER")))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::SETPROHIBITEDPOINTS")
  (make-package "COSTMAP_PROHIBITION_LAYER::SETPROHIBITEDPOINTS"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::SETPROHIBITEDPOINTSREQUEST")
  (make-package "COSTMAP_PROHIBITION_LAYER::SETPROHIBITEDPOINTSREQUEST"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::SETPROHIBITEDPOINTSRESPONSE")
  (make-package "COSTMAP_PROHIBITION_LAYER::SETPROHIBITEDPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass costmap_prohibition_layer::SetProhibitedPointsRequest
  :super ros::object
  :slots (_polygons ))

(defmethod costmap_prohibition_layer::SetProhibitedPointsRequest
  (:init
   (&key
    ((:polygons __polygons) ())
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
    ;; geometry_msgs/Polygon[] _polygons
    (apply #'+ (send-all _polygons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Polygon[] _polygons
     (write-long (length _polygons) s)
     (dolist (elem _polygons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Polygon[] _polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygons (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass costmap_prohibition_layer::SetProhibitedPointsResponse
  :super ros::object
  :slots (_msg ))

(defmethod costmap_prohibition_layer::SetProhibitedPointsResponse
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

(defclass costmap_prohibition_layer::SetProhibitedPoints
  :super ros::object
  :slots ())

(setf (get costmap_prohibition_layer::SetProhibitedPoints :md5sum-) "d58bd181a40e77cd6f8dfb61f5bc4f85")
(setf (get costmap_prohibition_layer::SetProhibitedPoints :datatype-) "costmap_prohibition_layer/SetProhibitedPoints")
(setf (get costmap_prohibition_layer::SetProhibitedPoints :request) costmap_prohibition_layer::SetProhibitedPointsRequest)
(setf (get costmap_prohibition_layer::SetProhibitedPoints :response) costmap_prohibition_layer::SetProhibitedPointsResponse)

(defmethod costmap_prohibition_layer::SetProhibitedPointsRequest
  (:response () (instance costmap_prohibition_layer::SetProhibitedPointsResponse :init)))

(setf (get costmap_prohibition_layer::SetProhibitedPointsRequest :md5sum-) "d58bd181a40e77cd6f8dfb61f5bc4f85")
(setf (get costmap_prohibition_layer::SetProhibitedPointsRequest :datatype-) "costmap_prohibition_layer/SetProhibitedPointsRequest")
(setf (get costmap_prohibition_layer::SetProhibitedPointsRequest :definition-)
      "geometry_msgs/Polygon[] polygons

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

(setf (get costmap_prohibition_layer::SetProhibitedPointsResponse :md5sum-) "d58bd181a40e77cd6f8dfb61f5bc4f85")
(setf (get costmap_prohibition_layer::SetProhibitedPointsResponse :datatype-) "costmap_prohibition_layer/SetProhibitedPointsResponse")
(setf (get costmap_prohibition_layer::SetProhibitedPointsResponse :definition-)
      "geometry_msgs/Polygon[] polygons

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



(provide :costmap_prohibition_layer/SetProhibitedPoints "d58bd181a40e77cd6f8dfb61f5bc4f85")


