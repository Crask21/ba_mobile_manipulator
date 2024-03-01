; Auto-generated. Do not edit!


(cl:in-package robotnik_elevator_interface_msgs-srv)


;//! \htmlinclude SetElevatorControl-request.msg.html

(cl:defclass <SetElevatorControl-request> (roslisp-msg-protocol:ros-message)
  ((under_control
    :reader under_control
    :initarg :under_control
    :type cl:boolean
    :initform cl:nil)
   (master_id
    :reader master_id
    :initarg :master_id
    :type cl:string
    :initform "")
   (control_token
    :reader control_token
    :initarg :control_token
    :type cl:string
    :initform ""))
)

(cl:defclass SetElevatorControl-request (<SetElevatorControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetElevatorControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetElevatorControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-srv:<SetElevatorControl-request> is deprecated: use robotnik_elevator_interface_msgs-srv:SetElevatorControl-request instead.")))

(cl:ensure-generic-function 'under_control-val :lambda-list '(m))
(cl:defmethod under_control-val ((m <SetElevatorControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:under_control-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:under_control instead.")
  (under_control m))

(cl:ensure-generic-function 'master_id-val :lambda-list '(m))
(cl:defmethod master_id-val ((m <SetElevatorControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:master_id-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:master_id instead.")
  (master_id m))

(cl:ensure-generic-function 'control_token-val :lambda-list '(m))
(cl:defmethod control_token-val ((m <SetElevatorControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:control_token-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:control_token instead.")
  (control_token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetElevatorControl-request>) ostream)
  "Serializes a message object of type '<SetElevatorControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'under_control) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'master_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'master_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_token))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetElevatorControl-request>) istream)
  "Deserializes a message object of type '<SetElevatorControl-request>"
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
      (cl:setf (cl:slot-value msg 'control_token) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_token) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetElevatorControl-request>)))
  "Returns string type for a service object of type '<SetElevatorControl-request>"
  "robotnik_elevator_interface_msgs/SetElevatorControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevatorControl-request)))
  "Returns string type for a service object of type 'SetElevatorControl-request"
  "robotnik_elevator_interface_msgs/SetElevatorControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetElevatorControl-request>)))
  "Returns md5sum for a message object of type '<SetElevatorControl-request>"
  "6e754663daea7761789300acea2dd9dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetElevatorControl-request)))
  "Returns md5sum for a message object of type 'SetElevatorControl-request"
  "6e754663daea7761789300acea2dd9dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetElevatorControl-request>)))
  "Returns full string definition for message of type '<SetElevatorControl-request>"
  (cl:format cl:nil "# flat to set or not the control~%bool under_control~%# id to identify who is controlling the elevator~%string master_id~%# unique control token to avoid controlling the elevator from external agents~%string control_token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetElevatorControl-request)))
  "Returns full string definition for message of type 'SetElevatorControl-request"
  (cl:format cl:nil "# flat to set or not the control~%bool under_control~%# id to identify who is controlling the elevator~%string master_id~%# unique control token to avoid controlling the elevator from external agents~%string control_token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetElevatorControl-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'master_id))
     4 (cl:length (cl:slot-value msg 'control_token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetElevatorControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetElevatorControl-request
    (cl:cons ':under_control (under_control msg))
    (cl:cons ':master_id (master_id msg))
    (cl:cons ':control_token (control_token msg))
))
;//! \htmlinclude SetElevatorControl-response.msg.html

(cl:defclass <SetElevatorControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetElevatorControl-response (<SetElevatorControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetElevatorControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetElevatorControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-srv:<SetElevatorControl-response> is deprecated: use robotnik_elevator_interface_msgs-srv:SetElevatorControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetElevatorControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:success-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetElevatorControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:message-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetElevatorControl-response>) ostream)
  "Serializes a message object of type '<SetElevatorControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetElevatorControl-response>) istream)
  "Deserializes a message object of type '<SetElevatorControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetElevatorControl-response>)))
  "Returns string type for a service object of type '<SetElevatorControl-response>"
  "robotnik_elevator_interface_msgs/SetElevatorControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevatorControl-response)))
  "Returns string type for a service object of type 'SetElevatorControl-response"
  "robotnik_elevator_interface_msgs/SetElevatorControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetElevatorControl-response>)))
  "Returns md5sum for a message object of type '<SetElevatorControl-response>"
  "6e754663daea7761789300acea2dd9dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetElevatorControl-response)))
  "Returns md5sum for a message object of type 'SetElevatorControl-response"
  "6e754663daea7761789300acea2dd9dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetElevatorControl-response>)))
  "Returns full string definition for message of type '<SetElevatorControl-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetElevatorControl-response)))
  "Returns full string definition for message of type 'SetElevatorControl-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetElevatorControl-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetElevatorControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetElevatorControl-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetElevatorControl)))
  'SetElevatorControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetElevatorControl)))
  'SetElevatorControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevatorControl)))
  "Returns string type for a service object of type '<SetElevatorControl>"
  "robotnik_elevator_interface_msgs/SetElevatorControl")