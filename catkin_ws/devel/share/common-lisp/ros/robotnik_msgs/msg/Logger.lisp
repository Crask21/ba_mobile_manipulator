; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Logger.msg.html

(cl:defclass <Logger> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (date_time
    :reader date_time
    :initarg :date_time
    :type cl:string
    :initform "")
   (component
    :reader component
    :initarg :component
    :type cl:string
    :initform "")
   (tag
    :reader tag
    :initarg :tag
    :type cl:string
    :initform "")
   (log_level
    :reader log_level
    :initarg :log_level
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Logger (<Logger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Logger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Logger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Logger> is deprecated: use robotnik_msgs-msg:Logger instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:robot_id-val is deprecated.  Use robotnik_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'date_time-val :lambda-list '(m))
(cl:defmethod date_time-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:date_time-val is deprecated.  Use robotnik_msgs-msg:date_time instead.")
  (date_time m))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:component-val is deprecated.  Use robotnik_msgs-msg:component instead.")
  (component m))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:tag-val is deprecated.  Use robotnik_msgs-msg:tag instead.")
  (tag m))

(cl:ensure-generic-function 'log_level-val :lambda-list '(m))
(cl:defmethod log_level-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:log_level-val is deprecated.  Use robotnik_msgs-msg:log_level instead.")
  (log_level m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:description-val is deprecated.  Use robotnik_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Logger>)))
    "Constants for message type '<Logger>"
  '((:LOG_LEVEL_INFO . "INFO")
    (:LOG_LEVEL_WARNING . "WARNING")
    (:LOG_LEVEL_ERROR . "ERROR")
    (:LOG_LEVEL_DEBUG . "DEBUG")
    (:LOG_LEVEL_USER . "USER"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Logger)))
    "Constants for message type 'Logger"
  '((:LOG_LEVEL_INFO . "INFO")
    (:LOG_LEVEL_WARNING . "WARNING")
    (:LOG_LEVEL_ERROR . "ERROR")
    (:LOG_LEVEL_DEBUG . "DEBUG")
    (:LOG_LEVEL_USER . "USER"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Logger>) ostream)
  "Serializes a message object of type '<Logger>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date_time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'component))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'component))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'log_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'log_level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Logger>) istream)
  "Deserializes a message object of type '<Logger>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'component) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'component) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'log_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'log_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Logger>)))
  "Returns string type for a message object of type '<Logger>"
  "robotnik_msgs/Logger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Logger)))
  "Returns string type for a message object of type 'Logger"
  "robotnik_msgs/Logger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Logger>)))
  "Returns md5sum for a message object of type '<Logger>"
  "fac2a91a3a99e2c3d40f1613229ad8f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Logger)))
  "Returns md5sum for a message object of type 'Logger"
  "fac2a91a3a99e2c3d40f1613229ad8f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Logger>)))
  "Returns full string definition for message of type '<Logger>"
  (cl:format cl:nil "string LOG_LEVEL_INFO=INFO~%string LOG_LEVEL_WARNING=WARNING~%string LOG_LEVEL_ERROR=ERROR~%string LOG_LEVEL_DEBUG=DEBUG~%string LOG_LEVEL_USER=USER~%string robot_id~%string date_time~%string component~%string tag~%string log_level~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Logger)))
  "Returns full string definition for message of type 'Logger"
  (cl:format cl:nil "string LOG_LEVEL_INFO=INFO~%string LOG_LEVEL_WARNING=WARNING~%string LOG_LEVEL_ERROR=ERROR~%string LOG_LEVEL_DEBUG=DEBUG~%string LOG_LEVEL_USER=USER~%string robot_id~%string date_time~%string component~%string tag~%string log_level~%string description~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Logger>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'date_time))
     4 (cl:length (cl:slot-value msg 'component))
     4 (cl:length (cl:slot-value msg 'tag))
     4 (cl:length (cl:slot-value msg 'log_level))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Logger>))
  "Converts a ROS message object to a list"
  (cl:list 'Logger
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':date_time (date_time msg))
    (cl:cons ':component (component msg))
    (cl:cons ':tag (tag msg))
    (cl:cons ':log_level (log_level msg))
    (cl:cons ':description (description msg))
))
