;; Auto-generated. Do not edit!


(when (boundp 'costmap_prohibition_layer::GetProhibitedPoints)
  (if (not (find-package "COSTMAP_PROHIBITION_LAYER"))
    (make-package "COSTMAP_PROHIBITION_LAYER"))
  (shadow 'GetProhibitedPoints (find-package "COSTMAP_PROHIBITION_LAYER")))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::GETPROHIBITEDPOINTS")
  (make-package "COSTMAP_PROHIBITION_LAYER::GETPROHIBITEDPOINTS"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::GETPROHIBITEDPOINTSREQUEST")
  (make-package "COSTMAP_PROHIBITION_LAYER::GETPROHIBITEDPOINTSREQUEST"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::GETPROHIBITEDPOINTSRESPONSE")
  (make-package "COSTMAP_PROHIBITION_LAYER::GETPROHIBITEDPOINTSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass costmap_prohibition_layer::GetProhibitedPointsRequest
  :super ros::object
  :slots ())

(defmethod costmap_prohibition_layer::GetProhibitedPointsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass costmap_prohibition_layer::GetProhibitedPointsResponse
  :super ros::object
  :slots (_polygons ))

(defmethod costmap_prohibition_layer::GetProhibitedPointsResponse
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

(defclass costmap_prohibition_layer::GetProhibitedPoints
  :super ros::object
  :slots ())

(setf (get costmap_prohibition_layer::GetProhibitedPoints :md5sum-) "e85019b57cf217e7d529d6333370e839")
(setf (get costmap_prohibition_layer::GetProhibitedPoints :datatype-) "costmap_prohibition_layer/GetProhibitedPoints")
(setf (get costmap_prohibition_layer::GetProhibitedPoints :request) costmap_prohibition_layer::GetProhibitedPointsRequest)
(setf (get costmap_prohibition_layer::GetProhibitedPoints :response) costmap_prohibition_layer::GetProhibitedPointsResponse)

(defmethod costmap_prohibition_layer::GetProhibitedPointsRequest
  (:response () (instance costmap_prohibition_layer::GetProhibitedPointsResponse :init)))

(setf (get costmap_prohibition_layer::GetProhibitedPointsRequest :md5sum-) "e85019b57cf217e7d529d6333370e839")
(setf (get costmap_prohibition_layer::GetProhibitedPointsRequest :datatype-) "costmap_prohibition_layer/GetProhibitedPointsRequest")
(setf (get costmap_prohibition_layer::GetProhibitedPointsRequest :definition-)
      "
---
geometry_msgs/Polygon[] polygons


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
")

(setf (get costmap_prohibition_layer::GetProhibitedPointsResponse :md5sum-) "e85019b57cf217e7d529d6333370e839")
(setf (get costmap_prohibition_layer::GetProhibitedPointsResponse :datatype-) "costmap_prohibition_layer/GetProhibitedPointsResponse")
(setf (get costmap_prohibition_layer::GetProhibitedPointsResponse :definition-)
      "
---
geometry_msgs/Polygon[] polygons


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
")



(provide :costmap_prohibition_layer/GetProhibitedPoints "e85019b57cf217e7d529d6333370e839")


