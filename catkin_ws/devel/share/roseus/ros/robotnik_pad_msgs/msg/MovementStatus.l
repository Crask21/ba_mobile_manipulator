;; Auto-generated. Do not edit!


(when (boundp 'robotnik_pad_msgs::MovementStatus)
  (if (not (find-package "ROBOTNIK_PAD_MSGS"))
    (make-package "ROBOTNIK_PAD_MSGS"))
  (shadow 'MovementStatus (find-package "ROBOTNIK_PAD_MSGS")))
(unless (find-package "ROBOTNIK_PAD_MSGS::MOVEMENTSTATUS")
  (make-package "ROBOTNIK_PAD_MSGS::MOVEMENTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MovementStatus.msg.html


(defclass robotnik_pad_msgs::MovementStatus
  :super ros::object
  :slots (_velocity_level _kinematic_mode ))

(defmethod robotnik_pad_msgs::MovementStatus
  (:init
   (&key
    ((:velocity_level __velocity_level) 0.0)
    ((:kinematic_mode __kinematic_mode) "")
    )
   (send-super :init)
   (setq _velocity_level (float __velocity_level))
   (setq _kinematic_mode (string __kinematic_mode))
   self)
  (:velocity_level
   (&optional __velocity_level)
   (if __velocity_level (setq _velocity_level __velocity_level)) _velocity_level)
  (:kinematic_mode
   (&optional __kinematic_mode)
   (if __kinematic_mode (setq _kinematic_mode __kinematic_mode)) _kinematic_mode)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity_level
    4
    ;; string _kinematic_mode
    4 (length _kinematic_mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity_level
       (sys::poke _velocity_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _kinematic_mode
       (write-long (length _kinematic_mode) s) (princ _kinematic_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity_level
     (setq _velocity_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _kinematic_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kinematic_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_pad_msgs::MovementStatus :md5sum-) "c8160ce2c4f4adfe5c5d11e61af5bad5")
(setf (get robotnik_pad_msgs::MovementStatus :datatype-) "robotnik_pad_msgs/MovementStatus")
(setf (get robotnik_pad_msgs::MovementStatus :definition-)
      "float32 velocity_level
string kinematic_mode
")



(provide :robotnik_pad_msgs/MovementStatus "c8160ce2c4f4adfe5c5d11e61af5bad5")


