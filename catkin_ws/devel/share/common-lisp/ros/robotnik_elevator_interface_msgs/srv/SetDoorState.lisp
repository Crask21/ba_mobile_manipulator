; Auto-generated. Do not edit!


(cl:in-package robotnik_elevator_interface_msgs-srv)


;//! \htmlinclude SetDoorState-request.msg.html

(cl:defclass <SetDoorState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (control_token
    :reader control_token
    :initarg :control_token
    :type cl:string
    :initform ""))
)

(cl:defclass SetDoorState-request (<SetDoorState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDoorState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDoorState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-srv:<SetDoorState-request> is deprecated: use robotnik_elevator_interface_msgs-srv:SetDoorState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetDoorState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:state-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'control_token-val :lambda-list '(m))
(cl:defmethod control_token-val ((m <SetDoorState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:control_token-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:control_token instead.")
  (control_token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDoorState-request>) ostream)
  "Serializes a message object of type '<SetDoorState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_token))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDoorState-request>) istream)
  "Deserializes a message object of type '<SetDoorState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDoorState-request>)))
  "Returns string type for a service object of type '<SetDoorState-request>"
  "robotnik_elevator_interface_msgs/SetDoorStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDoorState-request)))
  "Returns string type for a service object of type 'SetDoorState-request"
  "robotnik_elevator_interface_msgs/SetDoorStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDoorState-request>)))
  "Returns md5sum for a message object of type '<SetDoorState-request>"
  "d23ce984296255998e5bcc26595a09b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDoorState-request)))
  "Returns md5sum for a message object of type 'SetDoorState-request"
  "d23ce984296255998e5bcc26595a09b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDoorState-request>)))
  "Returns full string definition for message of type '<SetDoorState-request>"
  (cl:format cl:nil "# See ElevatorState (open,close)~%string state~%# unique control token to avoid controlling the elevator from external agents~%string control_token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDoorState-request)))
  "Returns full string definition for message of type 'SetDoorState-request"
  (cl:format cl:nil "# See ElevatorState (open,close)~%string state~%# unique control token to avoid controlling the elevator from external agents~%string control_token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDoorState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'control_token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDoorState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDoorState-request
    (cl:cons ':state (state msg))
    (cl:cons ':control_token (control_token msg))
))
;//! \htmlinclude SetDoorState-response.msg.html

(cl:defclass <SetDoorState-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetDoorState-response (<SetDoorState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDoorState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDoorState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_elevator_interface_msgs-srv:<SetDoorState-response> is deprecated: use robotnik_elevator_interface_msgs-srv:SetDoorState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetDoorState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:success-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetDoorState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_elevator_interface_msgs-srv:message-val is deprecated.  Use robotnik_elevator_interface_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDoorState-response>) ostream)
  "Serializes a message object of type '<SetDoorState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDoorState-response>) istream)
  "Deserializes a message object of type '<SetDoorState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDoorState-response>)))
  "Returns string type for a service object of type '<SetDoorState-response>"
  "robotnik_elevator_interface_msgs/SetDoorStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDoorState-response)))
  "Returns string type for a service object of type 'SetDoorState-response"
  "robotnik_elevator_interface_msgs/SetDoorStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDoorState-response>)))
  "Returns md5sum for a message object of type '<SetDoorState-response>"
  "d23ce984296255998e5bcc26595a09b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDoorState-response)))
  "Returns md5sum for a message object of type 'SetDoorState-response"
  "d23ce984296255998e5bcc26595a09b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDoorState-response>)))
  "Returns full string definition for message of type '<SetDoorState-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDoorState-response)))
  "Returns full string definition for message of type 'SetDoorState-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDoorState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDoorState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDoorState-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDoorState)))
  'SetDoorState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDoorState)))
  'SetDoorState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDoorState)))
  "Returns string type for a service object of type '<SetDoorState>"
  "robotnik_elevator_interface_msgs/SetDoorState")