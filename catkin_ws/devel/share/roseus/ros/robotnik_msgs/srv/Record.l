;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Record)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Record (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::RECORD")
  (make-package "ROBOTNIK_MSGS::RECORD"))
(unless (find-package "ROBOTNIK_MSGS::RECORDREQUEST")
  (make-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::RECORDRESPONSE")
  (make-package "ROBOTNIK_MSGS::RECORDRESPONSE"))

(in-package "ROS")





(intern "*ACTION_RECORD*" (find-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(shadow '*ACTION_RECORD* (find-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(defconstant robotnik_msgs::RecordRequest::*ACTION_RECORD* "RECORD")
(intern "*ACTION_STOP*" (find-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(shadow '*ACTION_STOP* (find-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(defconstant robotnik_msgs::RecordRequest::*ACTION_STOP* "STOP")
(intern "*ACTION_SAVE*" (find-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(shadow '*ACTION_SAVE* (find-package "ROBOTNIK_MSGS::RECORDREQUEST"))
(defconstant robotnik_msgs::RecordRequest::*ACTION_SAVE* "SAVE")

(defun robotnik_msgs::RecordRequest-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_msgs::RecordRequest
  :super ros::object
  :slots (_action _file_name _max_time ))

(defmethod robotnik_msgs::RecordRequest
  (:init
   (&key
    ((:action __action) "")
    ((:file_name __file_name) "")
    ((:max_time __max_time) 0)
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _file_name (string __file_name))
   (setq _max_time (round __max_time))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:max_time
   (&optional __max_time)
   (if __max_time (setq _max_time __max_time)) _max_time)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _file_name
    4 (length _file_name)
    ;; int32 _max_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;; int32 _max_time
       (write-long _max_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _max_time
     (setq _max_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::RecordResponse
  :super ros::object
  :slots (_message _success ))

(defmethod robotnik_msgs::RecordResponse
  (:init
   (&key
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::Record
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::Record :md5sum-) "b11ee07783432b9ca77edb829c7a5a8d")
(setf (get robotnik_msgs::Record :datatype-) "robotnik_msgs/Record")
(setf (get robotnik_msgs::Record :request) robotnik_msgs::RecordRequest)
(setf (get robotnik_msgs::Record :response) robotnik_msgs::RecordResponse)

(defmethod robotnik_msgs::RecordRequest
  (:response () (instance robotnik_msgs::RecordResponse :init)))

(setf (get robotnik_msgs::RecordRequest :md5sum-) "b11ee07783432b9ca77edb829c7a5a8d")
(setf (get robotnik_msgs::RecordRequest :datatype-) "robotnik_msgs/RecordRequest")
(setf (get robotnik_msgs::RecordRequest :definition-)
      "string ACTION_RECORD=RECORD
string ACTION_STOP=STOP
string ACTION_SAVE=SAVE
string action
string file_name
int32 max_time
---
string message
bool success

")

(setf (get robotnik_msgs::RecordResponse :md5sum-) "b11ee07783432b9ca77edb829c7a5a8d")
(setf (get robotnik_msgs::RecordResponse :datatype-) "robotnik_msgs/RecordResponse")
(setf (get robotnik_msgs::RecordResponse :definition-)
      "string ACTION_RECORD=RECORD
string ACTION_STOP=STOP
string ACTION_SAVE=SAVE
string action
string file_name
int32 max_time
---
string message
bool success

")



(provide :robotnik_msgs/Record "b11ee07783432b9ca77edb829c7a5a8d")


