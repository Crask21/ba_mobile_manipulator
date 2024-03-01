; Auto-generated. Do not edit!


(cl:in-package costmap_prohibition_layer-srv)


;//! \htmlinclude ClearProhibitedPoints-request.msg.html

(cl:defclass <ClearProhibitedPoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearProhibitedPoints-request (<ClearProhibitedPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearProhibitedPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearProhibitedPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<ClearProhibitedPoints-request> is deprecated: use costmap_prohibition_layer-srv:ClearProhibitedPoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearProhibitedPoints-request>) ostream)
  "Serializes a message object of type '<ClearProhibitedPoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearProhibitedPoints-request>) istream)
  "Deserializes a message object of type '<ClearProhibitedPoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearProhibitedPoints-request>)))
  "Returns string type for a service object of type '<ClearProhibitedPoints-request>"
  "costmap_prohibition_layer/ClearProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearProhibitedPoints-request)))
  "Returns string type for a service object of type 'ClearProhibitedPoints-request"
  "costmap_prohibition_layer/ClearProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearProhibitedPoints-request>)))
  "Returns md5sum for a message object of type '<ClearProhibitedPoints-request>"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearProhibitedPoints-request)))
  "Returns md5sum for a message object of type 'ClearProhibitedPoints-request"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearProhibitedPoints-request>)))
  "Returns full string definition for message of type '<ClearProhibitedPoints-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearProhibitedPoints-request)))
  "Returns full string definition for message of type 'ClearProhibitedPoints-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearProhibitedPoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearProhibitedPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearProhibitedPoints-request
))
;//! \htmlinclude ClearProhibitedPoints-response.msg.html

(cl:defclass <ClearProhibitedPoints-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass ClearProhibitedPoints-response (<ClearProhibitedPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearProhibitedPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearProhibitedPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<ClearProhibitedPoints-response> is deprecated: use costmap_prohibition_layer-srv:ClearProhibitedPoints-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <ClearProhibitedPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_prohibition_layer-srv:msg-val is deprecated.  Use costmap_prohibition_layer-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearProhibitedPoints-response>) ostream)
  "Serializes a message object of type '<ClearProhibitedPoints-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearProhibitedPoints-response>) istream)
  "Deserializes a message object of type '<ClearProhibitedPoints-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearProhibitedPoints-response>)))
  "Returns string type for a service object of type '<ClearProhibitedPoints-response>"
  "costmap_prohibition_layer/ClearProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearProhibitedPoints-response)))
  "Returns string type for a service object of type 'ClearProhibitedPoints-response"
  "costmap_prohibition_layer/ClearProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearProhibitedPoints-response>)))
  "Returns md5sum for a message object of type '<ClearProhibitedPoints-response>"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearProhibitedPoints-response)))
  "Returns md5sum for a message object of type 'ClearProhibitedPoints-response"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearProhibitedPoints-response>)))
  "Returns full string definition for message of type '<ClearProhibitedPoints-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearProhibitedPoints-response)))
  "Returns full string definition for message of type 'ClearProhibitedPoints-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearProhibitedPoints-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearProhibitedPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearProhibitedPoints-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearProhibitedPoints)))
  'ClearProhibitedPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearProhibitedPoints)))
  'ClearProhibitedPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearProhibitedPoints)))
  "Returns string type for a service object of type '<ClearProhibitedPoints>"
  "costmap_prohibition_layer/ClearProhibitedPoints")