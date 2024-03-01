; Auto-generated. Do not edit!


(cl:in-package robotnik_elevator_interface_msgs-msg)


;//! \htmlinclude ElevatorState.msg.html

(cl:defclass <ElevatorState> (roslisp-msg-protocol:ros-message)
  ((elevator_id
    :reader elevator_id
    :initarg :elevator_id
    :type cl:string
    :initform "")
   (current_floor
    :reader current_floor
    :initarg :current_floor
    :type cl:integer
    :initform 0)
   (target_floor
    :reader target_floor
    :initarg :target_floor
    :type cl:integer
    :initform 0)
   (under_control
    :reader under_control
    :initarg :under_control
    :type cl:boolean
    :initform cl:nil)
   (master_id
    :reader master_id
    :initarg :master_id
    :type cl:string
    :initform "")
   (elevator_status
    :reader elevator_status
    :initarg :elevator_status
    :type cl:string
    :initform "")
   (door_status
    :reader door_status
    :initarg :door_status
    :type cl:string
    :initform "")
   (cabin_presence_free
    :reader cabin_presence_free
    :initarg :cabin_presence_free
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElevatorState (<ElevatorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-msg:<ElevatorState> is deprecated: use robotnik_elevator_interface_msgs-msg:ElevatorState instead.")))

(cl:ensure-generic-function 'elevator_id-val :lambda-list '(m))
(cl:defmethod elevator_id-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:elevator_id-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:elevator_id instead.")
  (elevator_id m))

(cl:ensure-generic-function 'current_floor-val :lambda-list '(m))
(cl:defmethod current_floor-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:current_floor-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:current_floor instead.")
  (current_floor m))

(cl:ensure-generic-function 'target_floor-val :lambda-list '(m))
(cl:defmethod target_floor-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:target_floor-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:target_floor instead.")
  (target_floor m))

(cl:ensure-generic-function 'under_control-val :lambda-list '(m))
(cl:defmethod under_control-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:under_control-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:under_control instead.")
  (under_control m))

(cl:ensure-generic-function 'master_id-val :lambda-list '(m))
(cl:defmethod master_id-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:master_id-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:master_id instead.")
  (master_id m))

(cl:ensure-generic-function 'elevator_status-val :lambda-list '(m))
(cl:defmethod elevator_status-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:elevator_status-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:elevator_status instead.")
  (elevator_status m))

(cl:ensure-generic-function 'door_status-val :lambda-list '(m))
(cl:defmethod door_status-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:door_status-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:door_status instead.")
  (door_status m))

(cl:ensure-generic-function 'cabin_presence_free-val :lambda-list '(m))
(cl:defmethod cabin_presence_free-val ((m <ElevatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-msg:cabin_presence_free-val is deprecated.  Use robotnik_elevator_interface_msgs-msg:cabin_presence_free instead.")
  (cabin_presence_free m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ElevatorState>)))
    "Constants for message type '<ElevatorState>"
  '((:ELEVATOR_STATUS_IDLE . "idle")
    (:ELEVATOR_STATUS_UNKNOWN . "unknown")
    (:ELEVATOR_STATUS_MOVING . "moving")
    (:DOOR_STATUS_UNKNOWN . "unknown")
    (:DOOR_STATUS_OPENING . "opening")
    (:DOOR_STATUS_CLOSING . "closing")
    (:DOOR_STATUS_CLOSE . "close")
    (:DOOR_STATUS_OPEN . "open"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ElevatorState)))
    "Constants for message type 'ElevatorState"
  '((:ELEVATOR_STATUS_IDLE . "idle")
    (:ELEVATOR_STATUS_UNKNOWN . "unknown")
    (:ELEVATOR_STATUS_MOVING . "moving")
    (:DOOR_STATUS_UNKNOWN . "unknown")
    (:DOOR_STATUS_OPENING . "opening")
    (:DOOR_STATUS_CLOSING . "closing")
    (:DOOR_STATUS_CLOSE . "close")
    (:DOOR_STATUS_OPEN . "open"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorState>) ostream)
  "Serializes a message object of type '<ElevatorState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_id))
  (cl:let* ((signed (cl:slot-value msg 'current_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'under_control) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'master_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'master_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'door_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'door_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cabin_presence_free) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorState>) istream)
  "Deserializes a message object of type '<ElevatorState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'under_control) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'master_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'master_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'door_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'door_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'cabin_presence_free) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorState>)))
  "Returns string type for a message object of type '<ElevatorState>"
  "robotnik_elevator_interface_msgs/ElevatorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorState)))
  "Returns string type for a message object of type 'ElevatorState"
  "robotnik_elevator_interface_msgs/ElevatorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorState>)))
  "Returns md5sum for a message object of type '<ElevatorState>"
  "3531700245f9c96dbc860f08577c591f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorState)))
  "Returns md5sum for a message object of type 'ElevatorState"
  "3531700245f9c96dbc860f08577c591f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorState>)))
  "Returns full string definition for message of type '<ElevatorState>"
  (cl:format cl:nil "string ELEVATOR_STATUS_IDLE=idle~%string ELEVATOR_STATUS_UNKNOWN=unknown~%string ELEVATOR_STATUS_MOVING=moving~%~%string DOOR_STATUS_UNKNOWN=unknown~%string DOOR_STATUS_OPENING=opening~%string DOOR_STATUS_CLOSING=closing~%string DOOR_STATUS_CLOSE=close~%string DOOR_STATUS_OPEN=open~%~%string elevator_id~%~%int32 current_floor~%int32 target_floor~%# True if the elevator is under control~%bool under_control~%# id to identify who is controlling the elevator~%string master_id~%# elevator status~%string elevator_status~%# door status~%string door_status~%# flag active when no one is in the cabin~%bool cabin_presence_free~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorState)))
  "Returns full string definition for message of type 'ElevatorState"
  (cl:format cl:nil "string ELEVATOR_STATUS_IDLE=idle~%string ELEVATOR_STATUS_UNKNOWN=unknown~%string ELEVATOR_STATUS_MOVING=moving~%~%string DOOR_STATUS_UNKNOWN=unknown~%string DOOR_STATUS_OPENING=opening~%string DOOR_STATUS_CLOSING=closing~%string DOOR_STATUS_CLOSE=close~%string DOOR_STATUS_OPEN=open~%~%string elevator_id~%~%int32 current_floor~%int32 target_floor~%# True if the elevator is under control~%bool under_control~%# id to identify who is controlling the elevator~%string master_id~%# elevator status~%string elevator_status~%# door status~%string door_status~%# flag active when no one is in the cabin~%bool cabin_presence_free~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'elevator_id))
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'master_id))
     4 (cl:length (cl:slot-value msg 'elevator_status))
     4 (cl:length (cl:slot-value msg 'door_status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorState>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorState
    (cl:cons ':elevator_id (elevator_id msg))
    (cl:cons ':current_floor (current_floor msg))
    (cl:cons ':target_floor (target_floor msg))
    (cl:cons ':under_control (under_control msg))
    (cl:cons ':master_id (master_id msg))
    (cl:cons ':elevator_status (elevator_status msg))
    (cl:cons ':door_status (door_status msg))
    (cl:cons ':cabin_presence_free (cabin_presence_free msg))
))
