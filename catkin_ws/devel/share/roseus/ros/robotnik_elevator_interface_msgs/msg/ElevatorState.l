;; Auto-generated. Do not edit!


(when (boundp 'robotnik_elevator_interface_msgs::ElevatorState)
  (if (not (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
    (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS"))
  (shadow 'ElevatorState (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS")))
(unless (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE")
  (make-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude ElevatorState.msg.html


(intern "*ELEVATOR_STATUS_IDLE*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*ELEVATOR_STATUS_IDLE* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*ELEVATOR_STATUS_IDLE* "idle")
(intern "*ELEVATOR_STATUS_UNKNOWN*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*ELEVATOR_STATUS_UNKNOWN* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*ELEVATOR_STATUS_UNKNOWN* "unknown")
(intern "*ELEVATOR_STATUS_MOVING*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*ELEVATOR_STATUS_MOVING* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*ELEVATOR_STATUS_MOVING* "moving")
(intern "*DOOR_STATUS_UNKNOWN*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*DOOR_STATUS_UNKNOWN* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*DOOR_STATUS_UNKNOWN* "unknown")
(intern "*DOOR_STATUS_OPENING*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*DOOR_STATUS_OPENING* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*DOOR_STATUS_OPENING* "opening")
(intern "*DOOR_STATUS_CLOSING*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*DOOR_STATUS_CLOSING* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*DOOR_STATUS_CLOSING* "closing")
(intern "*DOOR_STATUS_CLOSE*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*DOOR_STATUS_CLOSE* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*DOOR_STATUS_CLOSE* "close")
(intern "*DOOR_STATUS_OPEN*" (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(shadow '*DOOR_STATUS_OPEN* (find-package "ROBOTNIK_ELEVATOR_INTERFACE_MSGS::ELEVATORSTATE"))
(defconstant robotnik_elevator_interface_msgs::ElevatorState::*DOOR_STATUS_OPEN* "open")

(defun robotnik_elevator_interface_msgs::ElevatorState-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_elevator_interface_msgs::ElevatorState
  :super ros::object
  :slots (_elevator_id _current_floor _target_floor _under_control _master_id _elevator_status _door_status _cabin_presence_free ))

(defmethod robotnik_elevator_interface_msgs::ElevatorState
  (:init
   (&key
    ((:elevator_id __elevator_id) "")
    ((:current_floor __current_floor) 0)
    ((:target_floor __target_floor) 0)
    ((:under_control __under_control) nil)
    ((:master_id __master_id) "")
    ((:elevator_status __elevator_status) "")
    ((:door_status __door_status) "")
    ((:cabin_presence_free __cabin_presence_free) nil)
    )
   (send-super :init)
   (setq _elevator_id (string __elevator_id))
   (setq _current_floor (round __current_floor))
   (setq _target_floor (round __target_floor))
   (setq _under_control __under_control)
   (setq _master_id (string __master_id))
   (setq _elevator_status (string __elevator_status))
   (setq _door_status (string __door_status))
   (setq _cabin_presence_free __cabin_presence_free)
   self)
  (:elevator_id
   (&optional __elevator_id)
   (if __elevator_id (setq _elevator_id __elevator_id)) _elevator_id)
  (:current_floor
   (&optional __current_floor)
   (if __current_floor (setq _current_floor __current_floor)) _current_floor)
  (:target_floor
   (&optional __target_floor)
   (if __target_floor (setq _target_floor __target_floor)) _target_floor)
  (:under_control
   (&optional (__under_control :null))
   (if (not (eq __under_control :null)) (setq _under_control __under_control)) _under_control)
  (:master_id
   (&optional __master_id)
   (if __master_id (setq _master_id __master_id)) _master_id)
  (:elevator_status
   (&optional __elevator_status)
   (if __elevator_status (setq _elevator_status __elevator_status)) _elevator_status)
  (:door_status
   (&optional __door_status)
   (if __door_status (setq _door_status __door_status)) _door_status)
  (:cabin_presence_free
   (&optional (__cabin_presence_free :null))
   (if (not (eq __cabin_presence_free :null)) (setq _cabin_presence_free __cabin_presence_free)) _cabin_presence_free)
  (:serialization-length
   ()
   (+
    ;; string _elevator_id
    4 (length _elevator_id)
    ;; int32 _current_floor
    4
    ;; int32 _target_floor
    4
    ;; bool _under_control
    1
    ;; string _master_id
    4 (length _master_id)
    ;; string _elevator_status
    4 (length _elevator_status)
    ;; string _door_status
    4 (length _door_status)
    ;; bool _cabin_presence_free
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _elevator_id
       (write-long (length _elevator_id) s) (princ _elevator_id s)
     ;; int32 _current_floor
       (write-long _current_floor s)
     ;; int32 _target_floor
       (write-long _target_floor s)
     ;; bool _under_control
       (if _under_control (write-byte -1 s) (write-byte 0 s))
     ;; string _master_id
       (write-long (length _master_id) s) (princ _master_id s)
     ;; string _elevator_status
       (write-long (length _elevator_status) s) (princ _elevator_status s)
     ;; string _door_status
       (write-long (length _door_status) s) (princ _door_status s)
     ;; bool _cabin_presence_free
       (if _cabin_presence_free (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _elevator_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _current_floor
     (setq _current_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_floor
     (setq _target_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _under_control
     (setq _under_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _master_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _master_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _elevator_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _door_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _door_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _cabin_presence_free
     (setq _cabin_presence_free (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotnik_elevator_interface_msgs::ElevatorState :md5sum-) "3531700245f9c96dbc860f08577c591f")
(setf (get robotnik_elevator_interface_msgs::ElevatorState :datatype-) "robotnik_elevator_interface_msgs/ElevatorState")
(setf (get robotnik_elevator_interface_msgs::ElevatorState :definition-)
      "string ELEVATOR_STATUS_IDLE=idle
string ELEVATOR_STATUS_UNKNOWN=unknown
string ELEVATOR_STATUS_MOVING=moving

string DOOR_STATUS_UNKNOWN=unknown
string DOOR_STATUS_OPENING=opening
string DOOR_STATUS_CLOSING=closing
string DOOR_STATUS_CLOSE=close
string DOOR_STATUS_OPEN=open

string elevator_id

int32 current_floor
int32 target_floor
# True if the elevator is under control
bool under_control
# id to identify who is controlling the elevator
string master_id
# elevator status
string elevator_status
# door status
string door_status
# flag active when no one is in the cabin
bool cabin_presence_free

")



(provide :robotnik_elevator_interface_msgs/ElevatorState "3531700245f9c96dbc860f08577c591f")


