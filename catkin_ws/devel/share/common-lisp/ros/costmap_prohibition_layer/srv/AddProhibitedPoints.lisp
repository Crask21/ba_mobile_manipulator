; Auto-generated. Do not edit!


(cl:in-package costmap_prohibition_layer-srv)


;//! \htmlinclude AddProhibitedPoints-request.msg.html

(cl:defclass <AddProhibitedPoints-request> (roslisp-msg-protocol:ros-message)
  ((polygons
    :reader polygons
    :initarg :polygons
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass AddProhibitedPoints-request (<AddProhibitedPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddProhibitedPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddProhibitedPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<AddProhibitedPoints-request> is deprecated: use costmap_prohibition_layer-srv:AddProhibitedPoints-request instead.")))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <AddProhibitedPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_prohibition_layer-srv:polygons-val is deprecated.  Use costmap_prohibition_layer-srv:polygons instead.")
  (polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddProhibitedPoints-request>) ostream)
  "Serializes a message object of type '<AddProhibitedPoints-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygons) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddProhibitedPoints-request>) istream)
  "Deserializes a message object of type '<AddProhibitedPoints-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygons) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddProhibitedPoints-request>)))
  "Returns string type for a service object of type '<AddProhibitedPoints-request>"
  "costmap_prohibition_layer/AddProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddProhibitedPoints-request)))
  "Returns string type for a service object of type 'AddProhibitedPoints-request"
  "costmap_prohibition_layer/AddProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddProhibitedPoints-request>)))
  "Returns md5sum for a message object of type '<AddProhibitedPoints-request>"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddProhibitedPoints-request)))
  "Returns md5sum for a message object of type 'AddProhibitedPoints-request"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddProhibitedPoints-request>)))
  "Returns full string definition for message of type '<AddProhibitedPoints-request>"
  (cl:format cl:nil "geometry_msgs/Polygon polygons~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddProhibitedPoints-request)))
  "Returns full string definition for message of type 'AddProhibitedPoints-request"
  (cl:format cl:nil "geometry_msgs/Polygon polygons~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddProhibitedPoints-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygons))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddProhibitedPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddProhibitedPoints-request
    (cl:cons ':polygons (polygons msg))
))
;//! \htmlinclude AddProhibitedPoints-response.msg.html

(cl:defclass <AddProhibitedPoints-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass AddProhibitedPoints-response (<AddProhibitedPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddProhibitedPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddProhibitedPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<AddProhibitedPoints-response> is deprecated: use costmap_prohibition_layer-srv:AddProhibitedPoints-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <AddProhibitedPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_prohibition_layer-srv:msg-val is deprecated.  Use costmap_prohibition_layer-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddProhibitedPoints-response>) ostream)
  "Serializes a message object of type '<AddProhibitedPoints-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddProhibitedPoints-response>) istream)
  "Deserializes a message object of type '<AddProhibitedPoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddProhibitedPoints-response>)))
  "Returns string type for a service object of type '<AddProhibitedPoints-response>"
  "costmap_prohibition_layer/AddProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddProhibitedPoints-response)))
  "Returns string type for a service object of type 'AddProhibitedPoints-response"
  "costmap_prohibition_layer/AddProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddProhibitedPoints-response>)))
  "Returns md5sum for a message object of type '<AddProhibitedPoints-response>"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddProhibitedPoints-response)))
  "Returns md5sum for a message object of type 'AddProhibitedPoints-response"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddProhibitedPoints-response>)))
  "Returns full string definition for message of type '<AddProhibitedPoints-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddProhibitedPoints-response)))
  "Returns full string definition for message of type 'AddProhibitedPoints-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddProhibitedPoints-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddProhibitedPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddProhibitedPoints-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddProhibitedPoints)))
  'AddProhibitedPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddProhibitedPoints)))
  'AddProhibitedPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddProhibitedPoints)))
  "Returns string type for a service object of type '<AddProhibitedPoints>"
  "costmap_prohibition_layer/AddProhibitedPoints")