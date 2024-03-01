; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude RecordStatus.msg.html

(cl:defclass <RecordStatus> (roslisp-msg-protocol:ros-message)
  ((recording
    :reader recording
    :initarg :recording
    :type cl:boolean
    :initform cl:nil)
   (recording_time
    :reader recording_time
    :initarg :recording_time
    :type cl:integer
    :initform 0)
   (state_description
    :reader state_description
    :initarg :state_description
    :type cl:string
    :initform ""))
)

(cl:defclass RecordStatus (<RecordStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<RecordStatus> is deprecated: use robotnik_msgs-msg:RecordStatus instead.")))

(cl:ensure-generic-function 'recording-val :lambda-list '(m))
(cl:defmethod recording-val ((m <RecordStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:recording-val is deprecated.  Use robotnik_msgs-msg:recording instead.")
  (recording m))

(cl:ensure-generic-function 'recording_time-val :lambda-list '(m))
(cl:defmethod recording_time-val ((m <RecordStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:recording_time-val is deprecated.  Use robotnik_msgs-msg:recording_time instead.")
  (recording_time m))

(cl:ensure-generic-function 'state_description-val :lambda-list '(m))
(cl:defmethod state_description-val ((m <RecordStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:state_description-val is deprecated.  Use robotnik_msgs-msg:state_description instead.")
  (state_description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordStatus>) ostream)
  "Serializes a message object of type '<RecordStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recording) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'recording_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordStatus>) istream)
  "Deserializes a message object of type '<RecordStatus>"
    (cl:setf (cl:slot-value msg 'recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recording_time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordStatus>)))
  "Returns string type for a message object of type '<RecordStatus>"
  "robotnik_msgs/RecordStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordStatus)))
  "Returns string type for a message object of type 'RecordStatus"
  "robotnik_msgs/RecordStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordStatus>)))
  "Returns md5sum for a message object of type '<RecordStatus>"
  "536d9648c6be2c09d55b8554e09a4f2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordStatus)))
  "Returns md5sum for a message object of type 'RecordStatus"
  "536d9648c6be2c09d55b8554e09a4f2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordStatus>)))
  "Returns full string definition for message of type '<RecordStatus>"
  (cl:format cl:nil "bool recording~%int32 recording_time~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordStatus)))
  "Returns full string definition for message of type 'RecordStatus"
  (cl:format cl:nil "bool recording~%int32 recording_time~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordStatus>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'state_description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordStatus
    (cl:cons ':recording (recording msg))
    (cl:cons ':recording_time (recording_time msg))
    (cl:cons ':state_description (state_description msg))
))
