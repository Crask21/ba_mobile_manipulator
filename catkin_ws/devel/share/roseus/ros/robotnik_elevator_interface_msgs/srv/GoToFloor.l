;; Auto-generated. Do not edit!


(when (boundp 'robotnik_elevator_interface_msgs::GoToFloor)
  (if (not (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
    (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
  (shadow 'GoToFloor (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS")))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::GOTOFLOOR")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::GOTOFLOOR"))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::GOTOFLOORREQUEST")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::GOTOFLOORREQUEST"))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::GOTOFLOORRESPONSE")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::GOTOFLOORRESPONSE"))

(in-package "ROS")





(defclass robotnik_elevator_interface_msgs::GoToFloorRequest
  :super ros::object
  :slots (_floor _control_token ))

(defmethod robotnik_elevator_interface_msgs::GoToFloorRequest
  (:init
   (&key
    ((:floor __floor) 0)
    ((:control_token __control_token) "")
    )
   (send-super :init)
   (setq _floor (round __floor))
   (setq _control_token (string __control_token))
   self)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:control_token
   (&optional __control_token)
   (if __control_token (setq _control_token __control_token)) _control_token)
  (:serialization-length
   ()
   (+
    ;; int32 _floor
    4
    ;; string _control_token
    4 (length _control_token)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _floor
       (write-long _floor s)
     ;; string _control_token
       (write-long (length _control_token) s) (princ _control_token s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _floor
     (setq _floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _control_token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_elevator_interface_msgs::GoToFloorResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_elevator_interface_msgs::GoToFloorResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_elevator_interface_msgs::GoToFloor
  :super ros::object
  :slots ())

(setf (get robotnik_elevator_interface_msgs::GoToFloor :md5sum-) "597b9b64f569298d176a3be74c2f6432")
(setf (get robotnik_elevator_interface_msgs::GoToFloor :datatype-) "robotnik_elevator_interface_msgs/GoToFloor")
(setf (get robotnik_elevator_interface_msgs::GoToFloor :request) robotnik_elevator_interface_msgs::GoToFloorRequest)
(setf (get robotnik_elevator_interface_msgs::GoToFloor :response) robotnik_elevator_interface_msgs::GoToFloorResponse)

(defmethod robotnik_elevator_interface_msgs::GoToFloorRequest
  (:response () (instance robotnik_elevator_interface_msgs::GoToFloorResponse :init)))

(setf (get robotnik_elevator_interface_msgs::GoToFloorRequest :md5sum-) "597b9b64f569298d176a3be74c2f6432")
(setf (get robotnik_elevator_interface_msgs::GoToFloorRequest :datatype-) "robotnik_elevator_interface_msgs/GoToFloorRequest")
(setf (get robotnik_elevator_interface_msgs::GoToFloorRequest :definition-)
      "int32 floor
# unique control token to avoid controlling the elevator from external agents
string control_token
---
bool success
string message


")

(setf (get robotnik_elevator_interface_msgs::GoToFloorResponse :md5sum-) "597b9b64f569298d176a3be74c2f6432")
(setf (get robotnik_elevator_interface_msgs::GoToFloorResponse :datatype-) "robotnik_elevator_interface_msgs/GoToFloorResponse")
(setf (get robotnik_elevator_interface_msgs::GoToFloorResponse :definition-)
      "int32 floor
# unique control token to avoid controlling the elevator from external agents
string control_token
---
bool success
string message


")



(provide :robotnik_elevator_interface_msgs/GoToFloor "597b9b64f569298d176a3be74c2f6432")


