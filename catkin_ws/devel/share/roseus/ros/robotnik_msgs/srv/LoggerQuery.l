;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::LoggerQuery)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'LoggerQuery (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::LOGGERQUERY")
  (make-package "ROBOTNIK_MSGS::LOGGERQUERY"))
(unless (find-package "ROBOTNIK_MSGS::LOGGERQUERYREQUEST")
  (make-package "ROBOTNIK_MSGS::LOGGERQUERYREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::LOGGERQUERYRESPONSE")
  (make-package "ROBOTNIK_MSGS::LOGGERQUERYRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::LoggerQueryRequest
  :super ros::object
  :slots (_query _max_records ))

(defmethod robotnik_msgs::LoggerQueryRequest
  (:init
   (&key
    ((:query __query) (instance robotnik_msgs::Logger :init))
    ((:max_records __max_records) 0)
    )
   (send-super :init)
   (setq _query __query)
   (setq _max_records (round __max_records))
   self)
  (:query
   (&rest __query)
   (if (keywordp (car __query))
       (send* _query __query)
     (progn
       (if __query (setq _query (car __query)))
       _query)))
  (:max_records
   (&optional __max_records)
   (if __max_records (setq _max_records __max_records)) _max_records)
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/Logger _query
    (send _query :serialization-length)
    ;; int32 _max_records
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/Logger _query
       (send _query :serialize s)
     ;; int32 _max_records
       (write-long _max_records s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/Logger _query
     (send _query :deserialize buf ptr-) (incf ptr- (send _query :serialization-length))
   ;; int32 _max_records
     (setq _max_records (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::LoggerQueryResponse
  :super ros::object
  :slots (_result _success _message ))

(defmethod robotnik_msgs::LoggerQueryResponse
  (:init
   (&key
    ((:result __result) ())
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/Logger[] _result
    (apply #'+ (send-all _result :serialization-length)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/Logger[] _result
     (write-long (length _result) s)
     (dolist (elem _result)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/Logger[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (let (r) (dotimes (i n) (push (instance robotnik_msgs::Logger :init) r)) r))
     (dolist (elem- _result)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::LoggerQuery
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::LoggerQuery :md5sum-) "9866c376d3d7b158d2eeafc9ef42a380")
(setf (get robotnik_msgs::LoggerQuery :datatype-) "robotnik_msgs/LoggerQuery")
(setf (get robotnik_msgs::LoggerQuery :request) robotnik_msgs::LoggerQueryRequest)
(setf (get robotnik_msgs::LoggerQuery :response) robotnik_msgs::LoggerQueryResponse)

(defmethod robotnik_msgs::LoggerQueryRequest
  (:response () (instance robotnik_msgs::LoggerQueryResponse :init)))

(setf (get robotnik_msgs::LoggerQueryRequest :md5sum-) "9866c376d3d7b158d2eeafc9ef42a380")
(setf (get robotnik_msgs::LoggerQueryRequest :datatype-) "robotnik_msgs/LoggerQueryRequest")
(setf (get robotnik_msgs::LoggerQueryRequest :definition-)
      "Logger query
int32 max_records

================================================================================
MSG: robotnik_msgs/Logger
string LOG_LEVEL_INFO=INFO
string LOG_LEVEL_WARNING=WARNING
string LOG_LEVEL_ERROR=ERROR
string LOG_LEVEL_DEBUG=DEBUG
string LOG_LEVEL_USER=USER
string robot_id
string date_time
string component
string tag
string log_level
---
Logger[] result
bool success
string message

================================================================================
MSG: robotnik_msgs/Logger
string LOG_LEVEL_INFO=INFO
string LOG_LEVEL_WARNING=WARNING
string LOG_LEVEL_ERROR=ERROR
string LOG_LEVEL_DEBUG=DEBUG
string LOG_LEVEL_USER=USER
string robot_id
string date_time
string component
string tag
string log_level
")

(setf (get robotnik_msgs::LoggerQueryResponse :md5sum-) "9866c376d3d7b158d2eeafc9ef42a380")
(setf (get robotnik_msgs::LoggerQueryResponse :datatype-) "robotnik_msgs/LoggerQueryResponse")
(setf (get robotnik_msgs::LoggerQueryResponse :definition-)
      "Logger query
int32 max_records

================================================================================
MSG: robotnik_msgs/Logger
string LOG_LEVEL_INFO=INFO
string LOG_LEVEL_WARNING=WARNING
string LOG_LEVEL_ERROR=ERROR
string LOG_LEVEL_DEBUG=DEBUG
string LOG_LEVEL_USER=USER
string robot_id
string date_time
string component
string tag
string log_level
---
Logger[] result
bool success
string message

================================================================================
MSG: robotnik_msgs/Logger
string LOG_LEVEL_INFO=INFO
string LOG_LEVEL_WARNING=WARNING
string LOG_LEVEL_ERROR=ERROR
string LOG_LEVEL_DEBUG=DEBUG
string LOG_LEVEL_USER=USER
string robot_id
string date_time
string component
string tag
string log_level
")



(provide :robotnik_msgs/LoggerQuery "9866c376d3d7b158d2eeafc9ef42a380")


