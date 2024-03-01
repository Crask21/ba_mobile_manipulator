;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::RecordStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'RecordStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::RECORDSTATUS")
  (make-package "ROBOTNIK_MSGS::RECORDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RecordStatus.msg.html


(defclass robotnik_msgs::RecordStatus
  :super ros::object
  :slots (_recording _recording_time _state_description ))

(defmethod robotnik_msgs::RecordStatus
  (:init
   (&key
    ((:recording __recording) nil)
    ((:recording_time __recording_time) 0)
    ((:state_description __state_description) "")
    )
   (send-super :init)
   (setq _recording __recording)
   (setq _recording_time (round __recording_time))
   (setq _state_description (string __state_description))
   self)
  (:recording
   (&optional (__recording :null))
   (if (not (eq __recording :null)) (setq _recording __recording)) _recording)
  (:recording_time
   (&optional __recording_time)
   (if __recording_time (setq _recording_time __recording_time)) _recording_time)
  (:state_description
   (&optional __state_description)
   (if __state_description (setq _state_description __state_description)) _state_description)
  (:serialization-length
   ()
   (+
    ;; bool _recording
    1
    ;; int32 _recording_time
    4
    ;; string _state_description
    4 (length _state_description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _recording
       (if _recording (write-byte -1 s) (write-byte 0 s))
     ;; int32 _recording_time
       (write-long _recording_time s)
     ;; string _state_description
       (write-long (length _state_description) s) (princ _state_description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _recording
     (setq _recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _recording_time
     (setq _recording_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _state_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::RecordStatus :md5sum-) "536d9648c6be2c09d55b8554e09a4f2c")
(setf (get robotnik_msgs::RecordStatus :datatype-) "robotnik_msgs/RecordStatus")
(setf (get robotnik_msgs::RecordStatus :definition-)
      "bool recording
int32 recording_time
string state_description

")



(provide :robotnik_msgs/RecordStatus "536d9648c6be2c09d55b8554e09a4f2c")


