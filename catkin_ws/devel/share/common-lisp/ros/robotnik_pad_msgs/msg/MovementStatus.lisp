; Auto-generated. Do not edit!


(cl:in-package robotnik_pad_msgs-msg)


;//! \htmlinclude MovementStatus.msg.html

(cl:defclass <MovementStatus> (roslisp-msg-protocol:ros-message)
  ((velocity_level
    :reader velocity_level
    :initarg :velocity_level
    :type cl:float
    :initform 0.0)
   (kinematic_mode
    :reader kinematic_mode
    :initarg :kinematic_mode
    :type cl:string
    :initform ""))
)

(cl:defclass MovementStatus (<MovementStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovementStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovementStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_pad_msgs-msg:<MovementStatus> is deprecated: use robotnik_pad_msgs-msg:MovementStatus instead.")))

(cl:ensure-generic-function 'velocity_level-val :lambda-list '(m))
(cl:defmethod velocity_level-val ((m <MovementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_pad_msgs-msg:velocity_level-val is deprecated.  Use robotnik_pad_msgs-msg:velocity_level instead.")
  (velocity_level m))

(cl:ensure-generic-function 'kinematic_mode-val :lambda-list '(m))
(cl:defmethod kinematic_mode-val ((m <MovementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_pad_msgs-msg:kinematic_mode-val is deprecated.  Use robotnik_pad_msgs-msg:kinematic_mode instead.")
  (kinematic_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovementStatus>) ostream)
  "Serializes a message object of type '<MovementStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kinematic_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kinematic_mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovementStatus>) istream)
  "Deserializes a message object of type '<MovementStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kinematic_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kinematic_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovementStatus>)))
  "Returns string type for a message object of type '<MovementStatus>"
  "robotnik_pad_msgs/MovementStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovementStatus)))
  "Returns string type for a message object of type 'MovementStatus"
  "robotnik_pad_msgs/MovementStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovementStatus>)))
  "Returns md5sum for a message object of type '<MovementStatus>"
  "c8160ce2c4f4adfe5c5d11e61af5bad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovementStatus)))
  "Returns md5sum for a message object of type 'MovementStatus"
  "c8160ce2c4f4adfe5c5d11e61af5bad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovementStatus>)))
  "Returns full string definition for message of type '<MovementStatus>"
  (cl:format cl:nil "float32 velocity_level~%string kinematic_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovementStatus)))
  "Returns full string definition for message of type 'MovementStatus"
  (cl:format cl:nil "float32 velocity_level~%string kinematic_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovementStatus>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'kinematic_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovementStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MovementStatus
    (cl:cons ':velocity_level (velocity_level msg))
    (cl:cons ':kinematic_mode (kinematic_mode msg))
))
