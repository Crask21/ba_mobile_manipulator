;; Auto-generated. Do not edit!


(when (boundp 'costmap_prohibition_layer::ClearProhibitedPoints)
  (if (not (find-package "COSTMAP_PROHIBITION_LAYER"))
    (make-package "COSTMAP_PROHIBITION_LAYER"))
  (shadow 'ClearProhibitedPoints (find-package "COSTMAP_PROHIBITION_LAYER")))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::CLEARPROHIBITEDPOINTS")
  (make-package "COSTMAP_PROHIBITION_LAYER::CLEARPROHIBITEDPOINTS"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::CLEARPROHIBITEDPOINTSREQUEST")
  (make-package "COSTMAP_PROHIBITION_LAYER::CLEARPROHIBITEDPOINTSREQUEST"))
(unless (find-package "COSTMAP_PROHIBITION_LAYER::CLEARPROHIBITEDPOINTSRESPONSE")
  (make-package "COSTMAP_PROHIBITION_LAYER::CLEARPROHIBITEDPOINTSRESPONSE"))

(in-package "ROS")





(defclass costmap_prohibition_layer::ClearProhibitedPointsRequest
  :super ros::object
  :slots ())

(defmethod costmap_prohibition_layer::ClearProhibitedPointsRequest
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

(defclass costmap_prohibition_layer::ClearProhibitedPointsResponse
  :super ros::object
  :slots (_msg ))

(defmethod costmap_prohibition_layer::ClearProhibitedPointsResponse
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

(defclass costmap_prohibition_layer::ClearProhibitedPoints
  :super ros::object
  :slots ())

(setf (get costmap_prohibition_layer::ClearProhibitedPoints :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get costmap_prohibition_layer::ClearProhibitedPoints :datatype-) "costmap_prohibition_layer/ClearProhibitedPoints")
(setf (get costmap_prohibition_layer::ClearProhibitedPoints :request) costmap_prohibition_layer::ClearProhibitedPointsRequest)
(setf (get costmap_prohibition_layer::ClearProhibitedPoints :response) costmap_prohibition_layer::ClearProhibitedPointsResponse)

(defmethod costmap_prohibition_layer::ClearProhibitedPointsRequest
  (:response () (instance costmap_prohibition_layer::ClearProhibitedPointsResponse :init)))

(setf (get costmap_prohibition_layer::ClearProhibitedPointsRequest :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get costmap_prohibition_layer::ClearProhibitedPointsRequest :datatype-) "costmap_prohibition_layer/ClearProhibitedPointsRequest")
(setf (get costmap_prohibition_layer::ClearProhibitedPointsRequest :definition-)
      "
---
string msg

")

(setf (get costmap_prohibition_layer::ClearProhibitedPointsResponse :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get costmap_prohibition_layer::ClearProhibitedPointsResponse :datatype-) "costmap_prohibition_layer/ClearProhibitedPointsResponse")
(setf (get costmap_prohibition_layer::ClearProhibitedPointsResponse :definition-)
      "
---
string msg

")



(provide :costmap_prohibition_layer/ClearProhibitedPoints "7d96ed730776804754140b85e64c862e")


