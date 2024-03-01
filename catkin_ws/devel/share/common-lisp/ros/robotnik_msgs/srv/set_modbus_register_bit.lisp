; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_modbus_register_bit-request.msg.html

(cl:defclass <set_modbus_register_bit-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0)
   (bit
    :reader bit
    :initarg :bit
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_modbus_register_bit-request (<set_modbus_register_bit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_modbus_register_bit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_modbus_register_bit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_modbus_register_bit-request> is deprecated: use robotnik_msgs-srv:set_modbus_register_bit-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <set_modbus_register_bit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:address-val is deprecated.  Use robotnik_msgs-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'bit-val :lambda-list '(m))
(cl:defmethod bit-val ((m <set_modbus_register_bit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:bit-val is deprecated.  Use robotnik_msgs-srv:bit instead.")
  (bit m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_modbus_register_bit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_modbus_register_bit-request>) ostream)
  "Serializes a message object of type '<set_modbus_register_bit-request>"
  (cl:let* ((signed (cl:slot-value msg 'address)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_modbus_register_bit-request>) istream)
  "Deserializes a message object of type '<set_modbus_register_bit-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bit) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_modbus_register_bit-request>)))
  "Returns string type for a service object of type '<set_modbus_register_bit-request>"
  "robotnik_msgs/set_modbus_register_bitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_modbus_register_bit-request)))
  "Returns string type for a service object of type 'set_modbus_register_bit-request"
  "robotnik_msgs/set_modbus_register_bitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_modbus_register_bit-request>)))
  "Returns md5sum for a message object of type '<set_modbus_register_bit-request>"
  "69640e6c2ff2509eb8d9047b1c2b68df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_modbus_register_bit-request)))
  "Returns md5sum for a message object of type 'set_modbus_register_bit-request"
  "69640e6c2ff2509eb8d9047b1c2b68df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_modbus_register_bit-request>)))
  "Returns full string definition for message of type '<set_modbus_register_bit-request>"
  (cl:format cl:nil "int16 address~%int16 bit~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_modbus_register_bit-request)))
  "Returns full string definition for message of type 'set_modbus_register_bit-request"
  (cl:format cl:nil "int16 address~%int16 bit~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_modbus_register_bit-request>))
  (cl:+ 0
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_modbus_register_bit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_modbus_register_bit-request
    (cl:cons ':address (address msg))
    (cl:cons ':bit (bit msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_modbus_register_bit-response.msg.html

(cl:defclass <set_modbus_register_bit-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_modbus_register_bit-response (<set_modbus_register_bit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_modbus_register_bit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_modbus_register_bit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_modbus_register_bit-response> is deprecated: use robotnik_msgs-srv:set_modbus_register_bit-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_modbus_register_bit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_modbus_register_bit-response>) ostream)
  "Serializes a message object of type '<set_modbus_register_bit-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_modbus_register_bit-response>) istream)
  "Deserializes a message object of type '<set_modbus_register_bit-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_modbus_register_bit-response>)))
  "Returns string type for a service object of type '<set_modbus_register_bit-response>"
  "robotnik_msgs/set_modbus_register_bitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_modbus_register_bit-response)))
  "Returns string type for a service object of type 'set_modbus_register_bit-response"
  "robotnik_msgs/set_modbus_register_bitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_modbus_register_bit-response>)))
  "Returns md5sum for a message object of type '<set_modbus_register_bit-response>"
  "69640e6c2ff2509eb8d9047b1c2b68df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_modbus_register_bit-response)))
  "Returns md5sum for a message object of type 'set_modbus_register_bit-response"
  "69640e6c2ff2509eb8d9047b1c2b68df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_modbus_register_bit-response>)))
  "Returns full string definition for message of type '<set_modbus_register_bit-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_modbus_register_bit-response)))
  "Returns full string definition for message of type 'set_modbus_register_bit-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_modbus_register_bit-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_modbus_register_bit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_modbus_register_bit-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_modbus_register_bit)))
  'set_modbus_register_bit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_modbus_register_bit)))
  'set_modbus_register_bit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_modbus_register_bit)))
  "Returns string type for a service object of type '<set_modbus_register_bit>"
  "robotnik_msgs/set_modbus_register_bit")