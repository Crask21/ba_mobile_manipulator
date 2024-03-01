; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude LoggerQuery-request.msg.html

(cl:defclass <LoggerQuery-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type robotnik_msgs-msg:Logger
    :initform (cl:make-instance 'robotnik_msgs-msg:Logger))
   (max_records
    :reader max_records
    :initarg :max_records
    :type cl:integer
    :initform 0))
)

(cl:defclass LoggerQuery-request (<LoggerQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoggerQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoggerQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<LoggerQuery-request> is deprecated: use robotnik_msgs-srv:LoggerQuery-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <LoggerQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:query-val is deprecated.  Use robotnik_msgs-srv:query instead.")
  (query m))

(cl:ensure-generic-function 'max_records-val :lambda-list '(m))
(cl:defmethod max_records-val ((m <LoggerQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:max_records-val is deprecated.  Use robotnik_msgs-srv:max_records instead.")
  (max_records m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoggerQuery-request>) ostream)
  "Serializes a message object of type '<LoggerQuery-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'query) ostream)
  (cl:let* ((signed (cl:slot-value msg 'max_records)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoggerQuery-request>) istream)
  "Deserializes a message object of type '<LoggerQuery-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'query) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_records) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoggerQuery-request>)))
  "Returns string type for a service object of type '<LoggerQuery-request>"
  "robotnik_msgs/LoggerQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoggerQuery-request)))
  "Returns string type for a service object of type 'LoggerQuery-request"
  "robotnik_msgs/LoggerQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoggerQuery-request>)))
  "Returns md5sum for a message object of type '<LoggerQuery-request>"
  "9866c376d3d7b158d2eeafc9ef42a380")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoggerQuery-request)))
  "Returns md5sum for a message object of type 'LoggerQuery-request"
  "9866c376d3d7b158d2eeafc9ef42a380")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoggerQuery-request>)))
  "Returns full string definition for message of type '<LoggerQuery-request>"
  (cl:format cl:nil "Logger query~%int32 max_records~%~%================================================================================~%MSG: robotnik_msgs/Logger~%string LOG_LEVEL_INFO=INFO~%string LOG_LEVEL_WARNING=WARNING~%string LOG_LEVEL_ERROR=ERROR~%string LOG_LEVEL_DEBUG=DEBUG~%string LOG_LEVEL_USER=USER~%string robot_id~%string date_time~%string component~%string tag~%string log_level~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoggerQuery-request)))
  "Returns full string definition for message of type 'LoggerQuery-request"
  (cl:format cl:nil "Logger query~%int32 max_records~%~%================================================================================~%MSG: robotnik_msgs/Logger~%string LOG_LEVEL_INFO=INFO~%string LOG_LEVEL_WARNING=WARNING~%string LOG_LEVEL_ERROR=ERROR~%string LOG_LEVEL_DEBUG=DEBUG~%string LOG_LEVEL_USER=USER~%string robot_id~%string date_time~%string component~%string tag~%string log_level~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoggerQuery-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'query))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoggerQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoggerQuery-request
    (cl:cons ':query (query msg))
    (cl:cons ':max_records (max_records msg))
))
;//! \htmlinclude LoggerQuery-response.msg.html

(cl:defclass <LoggerQuery-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector robotnik_msgs-msg:Logger)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:Logger :initial-element (cl:make-instance 'robotnik_msgs-msg:Logger)))
   (success
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

(cl:defclass LoggerQuery-response (<LoggerQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoggerQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoggerQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<LoggerQuery-response> is deprecated: use robotnik_msgs-srv:LoggerQuery-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LoggerQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:result-val is deprecated.  Use robotnik_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoggerQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LoggerQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoggerQuery-response>) ostream)
  "Serializes a message object of type '<LoggerQuery-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoggerQuery-response>) istream)
  "Deserializes a message object of type '<LoggerQuery-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:Logger))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoggerQuery-response>)))
  "Returns string type for a service object of type '<LoggerQuery-response>"
  "robotnik_msgs/LoggerQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoggerQuery-response)))
  "Returns string type for a service object of type 'LoggerQuery-response"
  "robotnik_msgs/LoggerQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoggerQuery-response>)))
  "Returns md5sum for a message object of type '<LoggerQuery-response>"
  "9866c376d3d7b158d2eeafc9ef42a380")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoggerQuery-response)))
  "Returns md5sum for a message object of type 'LoggerQuery-response"
  "9866c376d3d7b158d2eeafc9ef42a380")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoggerQuery-response>)))
  "Returns full string definition for message of type '<LoggerQuery-response>"
  (cl:format cl:nil "Logger[] result~%bool success~%string message~%~%================================================================================~%MSG: robotnik_msgs/Logger~%string LOG_LEVEL_INFO=INFO~%string LOG_LEVEL_WARNING=WARNING~%string LOG_LEVEL_ERROR=ERROR~%string LOG_LEVEL_DEBUG=DEBUG~%string LOG_LEVEL_USER=USER~%string robot_id~%string date_time~%string component~%string tag~%string log_level~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoggerQuery-response)))
  "Returns full string definition for message of type 'LoggerQuery-response"
  (cl:format cl:nil "Logger[] result~%bool success~%string message~%~%================================================================================~%MSG: robotnik_msgs/Logger~%string LOG_LEVEL_INFO=INFO~%string LOG_LEVEL_WARNING=WARNING~%string LOG_LEVEL_ERROR=ERROR~%string LOG_LEVEL_DEBUG=DEBUG~%string LOG_LEVEL_USER=USER~%string robot_id~%string date_time~%string component~%string tag~%string log_level~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoggerQuery-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoggerQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoggerQuery-response
    (cl:cons ':result (result msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoggerQuery)))
  'LoggerQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoggerQuery)))
  'LoggerQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoggerQuery)))
  "Returns string type for a service object of type '<LoggerQuery>"
  "robotnik_msgs/LoggerQuery")