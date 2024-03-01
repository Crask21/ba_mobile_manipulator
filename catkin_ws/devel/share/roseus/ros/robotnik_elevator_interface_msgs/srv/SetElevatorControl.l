;; Auto-generated. Do not edit!


(when (boundp 'robotnik_elevator_interface_msgs::SetElevatorControl)
  (if (not (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
    (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
  (shadow 'SetElevatorControl (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS")))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETELEVATORCONTROL")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETELEVATORCONTROL"))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETELEVATORCONTROLREQUEST")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETELEVATORCONTROLREQUEST"))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETELEVATORCONTROLRESPONSE")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::SETELEVATORCONTROLRESPONSE"))

(in-package "ROS")





(defclass robotnik_elevator_interface_msgs::SetElevatorControlRequest
  :super ros::object
  :slots (_under_control _master_id _control_token ))

(defmethod robotnik_elevator_interface_msgs::SetElevatorControlRequest
  (:init
   (&key
    ((:under_control __under_control) nil)
    ((:master_id __master_id) "")
    ((:control_token __control_token) "")
    )
   (send-super :init)
   (setq _under_control __under_control)
   (setq _master_id (string __master_id))
   (setq _control_token (string __control_token))
   self)
  (:under_control
   (&optional (__under_control :null))
   (if (not (eq __under_control :null)) (setq _under_control __under_control)) _under_control)
  (:master_id
   (&optional __master_id)
   (if __master_id (setq _master_id __master_id)) _master_id)
  (:control_token
   (&optional __control_token)
   (if __control_token (setq _control_token __control_token)) _control_token)
  (:serialization-length
   ()
   (+
    ;; bool _under_control
    1
    ;; string _master_id
    4 (length _master_id)
    ;; string _control_token
    4 (length _control_token)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _under_control
       (if _under_control (write-byte -1 s) (write-byte 0 s))
     ;; string _master_id
       (write-long (length _master_id) s) (princ _master_id s)
     ;; string _control_token
       (write-long (length _control_token) s) (princ _control_token s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _under_control
     (setq _under_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _master_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _master_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _control_token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_elevator_interface_msgs::SetElevatorControlResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_elevator_interface_msgs::SetElevatorControlResponse
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

(defclass robotnik_elevator_interface_msgs::SetElevatorControl
  :super ros::object
  :slots ())

(setf (get robotnik_elevator_interface_msgs::SetElevatorControl :md5sum-) "6e754663daea7761789300acea2dd9dd")
(setf (get robotnik_elevator_interface_msgs::SetElevatorControl :datatype-) "robotnik_elevator_interface_msgs/SetElevatorControl")
(setf (get robotnik_elevator_interface_msgs::SetElevatorControl :request) robotnik_elevator_interface_msgs::SetElevatorControlRequest)
(setf (get robotnik_elevator_interface_msgs::SetElevatorControl :response) robotnik_elevator_interface_msgs::SetElevatorControlResponse)

(defmethod robotnik_elevator_interface_msgs::SetElevatorControlRequest
  (:response () (instance robotnik_elevator_interface_msgs::SetElevatorControlResponse :init)))

(setf (get robotnik_elevator_interface_msgs::SetElevatorControlRequest :md5sum-) "6e754663daea7761789300acea2dd9dd")
(setf (get robotnik_elevator_interface_msgs::SetElevatorControlRequest :datatype-) "robotnik_elevator_interface_msgs/SetElevatorControlRequest")
(setf (get robotnik_elevator_interface_msgs::SetElevatorControlRequest :definition-)
      "# flat to set or not the control
bool under_control
# id to identify who is controlling the elevator
string master_id
# unique control token to avoid controlling the elevator from external agents
string control_token
---
bool success
string message

")

(setf (get robotnik_elevator_interface_msgs::SetElevatorControlResponse :md5sum-) "6e754663daea7761789300acea2dd9dd")
(setf (get robotnik_elevator_interface_msgs::SetElevatorControlResponse :datatype-) "robotnik_elevator_interface_msgs/SetElevatorControlResponse")
(setf (get robotnik_elevator_interface_msgs::SetElevatorControlResponse :definition-)
      "# flat to set or not the control
bool under_control
# id to identify who is controlling the elevator
string master_id
# unique control token to avoid controlling the elevator from external agents
string control_token
---
bool success
string message

")



(provide :robotnik_elevator_interface_msgs/SetElevatorControl "6e754663daea7761789300acea2dd9dd")


