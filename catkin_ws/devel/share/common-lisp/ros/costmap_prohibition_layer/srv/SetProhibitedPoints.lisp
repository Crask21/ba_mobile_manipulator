; Auto-generated. Do not edit!


(cl:in-package costmap_prohibition_layer-srv)


;//! \htmlinclude SetProhibitedPoints-request.msg.html

(cl:defclass <SetProhibitedPoints-request> (roslisp-msg-protocol:ros-message)
  ((polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass SetProhibitedPoints-request (<SetProhibitedPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetProhibitedPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetProhibitedPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<SetProhibitedPoints-request> is deprecated: use costmap_prohibition_layer-srv:SetProhibitedPoints-request instead.")))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <SetProhibitedPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_prohibition_layer-srv:polygons-val is deprecated.  Use costmap_prohibition_layer-srv:polygons instead.")
  (polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetProhibitedPoints-request>) ostream)
  "Serializes a message object of type '<SetProhibitedPoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetProhibitedPoints-request>) istream)
  "Deserializes a message object of type '<SetProhibitedPoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetProhibitedPoints-request>)))
  "Returns string type for a service object of type '<SetProhibitedPoints-request>"
  "costmap_prohibition_layer/SetProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProhibitedPoints-request)))
  "Returns string type for a service object of type 'SetProhibitedPoints-request"
  "costmap_prohibition_layer/SetProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetProhibitedPoints-request>)))
  "Returns md5sum for a message object of type '<SetProhibitedPoints-request>"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetProhibitedPoints-request)))
  "Returns md5sum for a message object of type 'SetProhibitedPoints-request"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetProhibitedPoints-request>)))
  "Returns full string definition for message of type '<SetProhibitedPoints-request>"
  (cl:format cl:nil "geometry_msgs/Polygon[] polygons~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetProhibitedPoints-request)))
  "Returns full string definition for message of type 'SetProhibitedPoints-request"
  (cl:format cl:nil "geometry_msgs/Polygon[] polygons~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetProhibitedPoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetProhibitedPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetProhibitedPoints-request
    (cl:cons ':polygons (polygons msg))
))
;//! \htmlinclude SetProhibitedPoints-response.msg.html

(cl:defclass <SetProhibitedPoints-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetProhibitedPoints-response (<SetProhibitedPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetProhibitedPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetProhibitedPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<SetProhibitedPoints-response> is deprecated: use costmap_prohibition_layer-srv:SetProhibitedPoints-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetProhibitedPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_prohibition_layer-srv:msg-val is deprecated.  Use costmap_prohibition_layer-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetProhibitedPoints-response>) ostream)
  "Serializes a message object of type '<SetProhibitedPoints-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetProhibitedPoints-response>) istream)
  "Deserializes a message object of type '<SetProhibitedPoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetProhibitedPoints-response>)))
  "Returns string type for a service object of type '<SetProhibitedPoints-response>"
  "costmap_prohibition_layer/SetProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProhibitedPoints-response)))
  "Returns string type for a service object of type 'SetProhibitedPoints-response"
  "costmap_prohibition_layer/SetProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetProhibitedPoints-response>)))
  "Returns md5sum for a message object of type '<SetProhibitedPoints-response>"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetProhibitedPoints-response)))
  "Returns md5sum for a message object of type 'SetProhibitedPoints-response"
  "d58bd181a40e77cd6f8dfb61f5bc4f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetProhibitedPoints-response>)))
  "Returns full string definition for message of type '<SetProhibitedPoints-response>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetProhibitedPoints-response)))
  "Returns full string definition for message of type 'SetProhibitedPoints-response"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetProhibitedPoints-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetProhibitedPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetProhibitedPoints-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetProhibitedPoints)))
  'SetProhibitedPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetProhibitedPoints)))
  'SetProhibitedPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetProhibitedPoints)))
  "Returns string type for a service object of type '<SetProhibitedPoints>"
  "costmap_prohibition_layer/SetProhibitedPoints")