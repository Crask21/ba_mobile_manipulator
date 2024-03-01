; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude Record-request.msg.html

(cl:defclass <Record-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform "")
   (max_time
    :reader max_time
    :initarg :max_time
    :type cl:integer
    :initform 0))
)

(cl:defclass Record-request (<Record-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Record-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Record-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<Record-request> is deprecated: use robotnik_msgs-srv:Record-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:action-val is deprecated.  Use robotnik_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:file_name-val is deprecated.  Use robotnik_msgs-srv:file_name instead.")
  (file_name m))

(cl:ensure-generic-function 'max_time-val :lambda-list '(m))
(cl:defmethod max_time-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:max_time-val is deprecated.  Use robotnik_msgs-srv:max_time instead.")
  (max_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Record-request>)))
    "Constants for message type '<Record-request>"
  '((:ACTION_RECORD . "RECORD")
    (:ACTION_STOP . "STOP")
    (:ACTION_SAVE . "SAVE"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Record-request)))
    "Constants for message type 'Record-request"
  '((:ACTION_RECORD . "RECORD")
    (:ACTION_STOP . "STOP")
    (:ACTION_SAVE . "SAVE"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Record-request>) ostream)
  "Serializes a message object of type '<Record-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
  (cl:let* ((signed (cl:slot-value msg 'max_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Record-request>) istream)
  "Deserializes a message object of type '<Record-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Record-request>)))
  "Returns string type for a service object of type '<Record-request>"
  "robotnik_msgs/RecordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record-request)))
  "Returns string type for a service object of type 'Record-request"
  "robotnik_msgs/RecordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Record-request>)))
  "Returns md5sum for a message object of type '<Record-request>"
  "b11ee07783432b9ca77edb829c7a5a8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Record-request)))
  "Returns md5sum for a message object of type 'Record-request"
  "b11ee07783432b9ca77edb829c7a5a8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Record-request>)))
  "Returns full string definition for message of type '<Record-request>"
  (cl:format cl:nil "string ACTION_RECORD=RECORD~%string ACTION_STOP=STOP~%string ACTION_SAVE=SAVE~%string action~%string file_name~%int32 max_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Record-request)))
  "Returns full string definition for message of type 'Record-request"
  (cl:format cl:nil "string ACTION_RECORD=RECORD~%string ACTION_STOP=STOP~%string ACTION_SAVE=SAVE~%string action~%string file_name~%int32 max_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Record-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'file_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Record-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Record-request
    (cl:cons ':action (action msg))
    (cl:cons ':file_name (file_name msg))
    (cl:cons ':max_time (max_time msg))
))
;//! \htmlinclude Record-response.msg.html

(cl:defclass <Record-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Record-response (<Record-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Record-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Record-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<Record-response> is deprecated: use robotnik_msgs-srv:Record-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Record-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Record-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Record-response>) ostream)
  "Serializes a message object of type '<Record-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Record-response>) istream)
  "Deserializes a message object of type '<Record-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Record-response>)))
  "Returns string type for a service object of type '<Record-response>"
  "robotnik_msgs/RecordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record-response)))
  "Returns string type for a service object of type 'Record-response"
  "robotnik_msgs/RecordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Record-response>)))
  "Returns md5sum for a message object of type '<Record-response>"
  "b11ee07783432b9ca77edb829c7a5a8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Record-response)))
  "Returns md5sum for a message object of type 'Record-response"
  "b11ee07783432b9ca77edb829c7a5a8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Record-response>)))
  "Returns full string definition for message of type '<Record-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Record-response)))
  "Returns full string definition for message of type 'Record-response"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Record-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Record-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Record-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Record)))
  'Record-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Record)))
  'Record-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record)))
  "Returns string type for a service object of type '<Record>"
  "robotnik_msgs/Record")