;; Auto-generated. Do not edit!


(when (boundp 'robotnik_elevator_interface_msgs::SetDoorState)
  (if (not (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
    (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
  (shadow 'SetDoorState (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS")))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETDOORSTATE")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETDOORSTATE"))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETDOORSTATEREQUEST")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETDOORSTATEREQUEST"))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETDOORSTATERESPONSE")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETDOORSTATERESPONSE"))

(in-package "ROS")





(defclass robotnik_elevator_interface_msgs::SetDoorStateRequest
  :super ros::object
  :slots (_state _control_token ))

(defmethod robotnik_elevator_interface_msgs::SetDoorStateRequest
  (:init
   (&key
    ((:state __state) "")
    ((:control_token __control_token) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _control_token (string __control_token))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:control_token
   (&optional __control_token)
   (if __control_token (setq _control_token __control_token)) _control_token)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _control_token
    4 (length _control_token)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _control_token
       (write-long (length _control_token) s) (princ _control_token s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _control_token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_elevator_interface_msgs::SetDoorStateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_elevator_interface_msgs::SetDoorStateResponse
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

(defclass robotnik_elevator_interface_msgs::SetDoorState
  :super ros::object
  :slots ())

(setf (get robotnik_elevator_interface_msgs::SetDoorState :md5sum-) "d23ce984296255998e5bcc26595a09b8")
(setf (get robotnik_elevator_interface_msgs::SetDoorState :datatype-) "robotnik_elevator_interface_msgs/SetDoorState")
(setf (get robotnik_elevator_interface_msgs::SetDoorState :request) robotnik_elevator_interface_msgs::SetDoorStateRequest)
(setf (get robotnik_elevator_interface_msgs::SetDoorState :response) robotnik_elevator_interface_msgs::SetDoorStateResponse)

(defmethod robotnik_elevator_interface_msgs::SetDoorStateRequest
  (:response () (instance robotnik_elevator_interface_msgs::SetDoorStateResponse :init)))

(setf (get robotnik_elevator_interface_msgs::SetDoorStateRequest :md5sum-) "d23ce984296255998e5bcc26595a09b8")
(setf (get robotnik_elevator_interface_msgs::SetDoorStateRequest :datatype-) "robotnik_elevator_interface_msgs/SetDoorStateRequest")
(setf (get robotnik_elevator_interface_msgs::SetDoorStateRequest :definition-)
      "# See ElevatorState (open,close)
string state
# unique control token to avoid controlling the elevator from external agents
string control_token
---
bool success
string message


")

(setf (get robotnik_elevator_interface_msgs::SetDoorStateResponse :md5sum-) "d23ce984296255998e5bcc26595a09b8")
(setf (get robotnik_elevator_interface_msgs::SetDoorStateResponse :datatype-) "robotnik_elevator_interface_msgs/SetDoorStateResponse")
(setf (get robotnik_elevator_interface_msgs::SetDoorStateResponse :definition-)
      "# See ElevatorState (open,close)
string state
# unique control token to avoid controlling the elevator from external agents
string control_token
---
bool success
string message


")



(provide :robotnik_elevator_interface_msgs/SetDoorState "d23ce984296255998e5bcc26595a09b8")


