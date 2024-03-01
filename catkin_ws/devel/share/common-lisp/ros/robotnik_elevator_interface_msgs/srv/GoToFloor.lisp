; Auto-generated. Do not edit!


(cl:in-package robotnik_elevator_interface_msgs-srv)


;//! \htmlinclude GoToFloor-request.msg.html

(cl:defclass <GoToFloor-request> (roslisp-msg-protocol:ros-message)
  ((floor
    :reader floor
    :initarg :floor
    :type cl:integer
    :initform 0)
   (control_token
    :reader control_token
    :initarg :control_token
    :type cl:string
    :initform ""))
)

(cl:defclass GoToFloor-request (<GoToFloor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToFloor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToFloor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-srv:<GoToFloor-request> is deprecated: use robotnik_elevator_interface_msgs-srv:GoToFloor-request instead.")))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <GoToFloor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:floor-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:floor instead.")
  (floor m))

(cl:ensure-generic-function 'control_token-val :lambda-list '(m))
(cl:defmethod control_token-val ((m <GoToFloor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:control_token-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:control_token instead.")
  (control_token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToFloor-request>) ostream)
  "Serializes a message object of type '<GoToFloor-request>"
  (cl:let* ((signed (cl:slot-value msg 'floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_token))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToFloor-request>) istream)
  "Deserializes a message object of type '<GoToFloor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToFloor-request>)))
  "Returns string type for a service object of type '<GoToFloor-request>"
  "robotnik_elevator_interface_msgs/GoToFloorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToFloor-request)))
  "Returns string type for a service object of type 'GoToFloor-request"
  "robotnik_elevator_interface_msgs/GoToFloorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToFloor-request>)))
  "Returns md5sum for a message object of type '<GoToFloor-request>"
  "597b9b64f569298d176a3be74c2f6432")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToFloor-request)))
  "Returns md5sum for a message object of type 'GoToFloor-request"
  "597b9b64f569298d176a3be74c2f6432")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToFloor-request>)))
  "Returns full string definition for message of type '<GoToFloor-request>"
  (cl:format cl:nil "int32 floor~%# unique control token to avoid controlling the elevator from external agents~%string control_token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToFloor-request)))
  "Returns full string definition for message of type 'GoToFloor-request"
  (cl:format cl:nil "int32 floor~%# unique control token to avoid controlling the elevator from external agents~%string control_token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToFloor-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'control_token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToFloor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToFloor-request
    (cl:cons ':floor (floor msg))
    (cl:cons ':control_token (control_token msg))
))
;//! \htmlinclude GoToFloor-response.msg.html

(cl:defclass <GoToFloor-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GoToFloor-response (<GoToFloor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToFloor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToFloor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-srv:<GoToFloor-response> is deprecated: use robotnik_elevator_interface_msgs-srv:GoToFloor-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoToFloor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:success-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GoToFloor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:message-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToFloor-response>) ostream)
  "Serializes a message object of type '<GoToFloor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToFloor-response>) istream)
  "Deserializes a message object of type '<GoToFloor-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToFloor-response>)))
  "Returns string type for a service object of type '<GoToFloor-response>"
  "robotnik_elevator_interface_msgs/GoToFloorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToFloor-response)))
  "Returns string type for a service object of type 'GoToFloor-response"
  "robotnik_elevator_interface_msgs/GoToFloorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToFloor-response>)))
  "Returns md5sum for a message object of type '<GoToFloor-response>"
  "597b9b64f569298d176a3be74c2f6432")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToFloor-response)))
  "Returns md5sum for a message object of type 'GoToFloor-response"
  "597b9b64f569298d176a3be74c2f6432")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToFloor-response>)))
  "Returns full string definition for message of type '<GoToFloor-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToFloor-response)))
  "Returns full string definition for message of type 'GoToFloor-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToFloor-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToFloor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToFloor-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToFloor)))
  'GoToFloor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToFloor)))
  'GoToFloor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToFloor)))
  "Returns string type for a service object of type '<GoToFloor>"
  "robotnik_elevator_interface_msgs/GoToFloor")