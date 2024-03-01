;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Logger)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Logger (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::LOGGER")
  (make-package "ROBOTNIK_MSGS::LOGGER"))

(in-package "ROS")
;;//! \htmlinclude Logger.msg.html


(intern "*LOG_LEVEL_INFO*" (find-package "ROBOTNIK_MSGS::LOGGER"))
(shadow '*LOG_LEVEL_INFO* (find-package "ROBOTNIK_MSGS::LOGGER"))
(defconstant robotnik_msgs::Logger::*LOG_LEVEL_INFO* "INFO")
(intern "*LOG_LEVEL_WARNING*" (find-package "ROBOTNIK_MSGS::LOGGER"))
(shadow '*LOG_LEVEL_WARNING* (find-package "ROBOTNIK_MSGS::LOGGER"))
(defconstant robotnik_msgs::Logger::*LOG_LEVEL_WARNING* "WARNING")
(intern "*LOG_LEVEL_ERROR*" (find-package "ROBOTNIK_MSGS::LOGGER"))
(shadow '*LOG_LEVEL_ERROR* (find-package "ROBOTNIK_MSGS::LOGGER"))
(defconstant robotnik_msgs::Logger::*LOG_LEVEL_ERROR* "ERROR")
(intern "*LOG_LEVEL_DEBUG*" (find-package "ROBOTNIK_MSGS::LOGGER"))
(shadow '*LOG_LEVEL_DEBUG* (find-package "ROBOTNIK_MSGS::LOGGER"))
(defconstant robotnik_msgs::Logger::*LOG_LEVEL_DEBUG* "DEBUG")
(intern "*LOG_LEVEL_USER*" (find-package "ROBOTNIK_MSGS::LOGGER"))
(shadow '*LOG_LEVEL_USER* (find-package "ROBOTNIK_MSGS::LOGGER"))
(defconstant robotnik_msgs::Logger::*LOG_LEVEL_USER* "USER")

(defun robotnik_msgs::Logger-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_msgs::Logger
  :super ros::object
  :slots (_robot_id _date_time _component _tag _log_level _description ))

(defmethod robotnik_msgs::Logger
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:date_time __date_time) "")
    ((:component __component) "")
    ((:tag __tag) "")
    ((:log_level __log_level) "")
    ((:description __description) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _date_time (string __date_time))
   (setq _component (string __component))
   (setq _tag (string __tag))
   (setq _log_level (string __log_level))
   (setq _description (string __description))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:date_time
   (&optional __date_time)
   (if __date_time (setq _date_time __date_time)) _date_time)
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:log_level
   (&optional __log_level)
   (if __log_level (setq _log_level __log_level)) _log_level)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _date_time
    4 (length _date_time)
    ;; string _component
    4 (length _component)
    ;; string _tag
    4 (length _tag)
    ;; string _log_level
    4 (length _log_level)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _date_time
       (write-long (length _date_time) s) (princ _date_time s)
     ;; string _component
       (write-long (length _component) s) (princ _component s)
     ;; string _tag
       (write-long (length _tag) s) (princ _tag s)
     ;; string _log_level
       (write-long (length _log_level) s) (princ _log_level s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _date_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _component
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _component (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _log_level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log_level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::Logger :md5sum-) "fac2a91a3a99e2c3d40f1613229ad8f7")
(setf (get robotnik_msgs::Logger :datatype-) "robotnik_msgs/Logger")
(setf (get robotnik_msgs::Logger :definition-)
      "string LOG_LEVEL_INFO=INFO
string LOG_LEVEL_WARNING=WARNING
string LOG_LEVEL_ERROR=ERROR
string LOG_LEVEL_DEBUG=DEBUG
string LOG_LEVEL_USER=USER
string robot_id
string date_time
string component
string tag
string log_level
string description
")



(provide :robotnik_msgs/Logger "fac2a91a3a99e2c3d40f1613229ad8f7")


