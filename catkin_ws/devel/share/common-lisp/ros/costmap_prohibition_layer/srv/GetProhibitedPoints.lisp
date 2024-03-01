; Auto-generated. Do not edit!


(cl:in-package costmap_prohibition_layer-srv)


;//! \htmlinclude GetProhibitedPoints-request.msg.html

(cl:defclass <GetProhibitedPoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetProhibitedPoints-request (<GetProhibitedPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProhibitedPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProhibitedPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<GetProhibitedPoints-request> is deprecated: use costmap_prohibition_layer-srv:GetProhibitedPoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProhibitedPoints-request>) ostream)
  "Serializes a message object of type '<GetProhibitedPoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProhibitedPoints-request>) istream)
  "Deserializes a message object of type '<GetProhibitedPoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProhibitedPoints-request>)))
  "Returns string type for a service object of type '<GetProhibitedPoints-request>"
  "costmap_prohibition_layer/GetProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProhibitedPoints-request)))
  "Returns string type for a service object of type 'GetProhibitedPoints-request"
  "costmap_prohibition_layer/GetProhibitedPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProhibitedPoints-request>)))
  "Returns md5sum for a message object of type '<GetProhibitedPoints-request>"
  "e85019b57cf217e7d529d6333370e839")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProhibitedPoints-request)))
  "Returns md5sum for a message object of type 'GetProhibitedPoints-request"
  "e85019b57cf217e7d529d6333370e839")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProhibitedPoints-request>)))
  "Returns full string definition for message of type '<GetProhibitedPoints-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProhibitedPoints-request)))
  "Returns full string definition for message of type 'GetProhibitedPoints-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProhibitedPoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProhibitedPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProhibitedPoints-request
))
;//! \htmlinclude GetProhibitedPoints-response.msg.html

(cl:defclass <GetProhibitedPoints-response> (roslisp-msg-protocol:ros-message)
  ((polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass GetProhibitedPoints-response (<GetProhibitedPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProhibitedPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProhibitedPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_prohibition_layer-srv:<GetProhibitedPoints-response> is deprecated: use costmap_prohibition_layer-srv:GetProhibitedPoints-response instead.")))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <GetProhibitedPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_prohibition_layer-srv:polygons-val is deprecated.  Use costmap_prohibition_layer-srv:polygons instead.")
  (polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProhibitedPoints-response>) ostream)
  "Serializes a message object of type '<GetProhibitedPoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProhibitedPoints-response>) istream)
  "Deserializes a message object of type '<GetProhibitedPoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProhibitedPoints-response>)))
  "Returns string type for a service object of type '<GetProhibitedPoints-response>"
  "costmap_prohibition_layer/GetProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProhibitedPoints-response)))
  "Returns string type for a service object of type 'GetProhibitedPoints-response"
  "costmap_prohibition_layer/GetProhibitedPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProhibitedPoints-response>)))
  "Returns md5sum for a message object of type '<GetProhibitedPoints-response>"
  "e85019b57cf217e7d529d6333370e839")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProhibitedPoints-response)))
  "Returns md5sum for a message object of type 'GetProhibitedPoints-response"
  "e85019b57cf217e7d529d6333370e839")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProhibitedPoints-response>)))
  "Returns full string definition for message of type '<GetProhibitedPoints-response>"
  (cl:format cl:nil "geometry_msgs/Polygon[] polygons~%~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProhibitedPoints-response)))
  "Returns full string definition for message of type 'GetProhibitedPoints-response"
  (cl:format cl:nil "geometry_msgs/Polygon[] polygons~%~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProhibitedPoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProhibitedPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProhibitedPoints-response
    (cl:cons ':polygons (polygons msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProhibitedPoints)))
  'GetProhibitedPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProhibitedPoints)))
  'GetProhibitedPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProhibitedPoints)))
  "Returns string type for a service object of type '<GetProhibitedPoints>"
  "costmap_prohibition_layer/GetProhibitedPoints")