;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xsarm_diagnostic_tool::JointTemps)
  (if (not (find-package "INTERBOTIX_XSARM_DIAGNOSTIC_TOOL"))
    (make-package "INTERBOTIX_XSARM_DIAGNOSTIC_TOOL"))
  (shadow 'JointTemps (find-package "INTERBOTIX_XSARM_DIAGNOSTIC_TOOL")))
(unless (find-package "INTERBOTIX_XSARM_DIAGNOSTIC_TOOL::JOINTTEMPS")
  (make-package "INTERBOTIX_XSARM_DIAGNOSTIC_TOOL::JOINTTEMPS"))

(in-package "ROS")
;;//! \htmlinclude JointTemps.msg.html


(defclass interbotix_xsarm_diagnostic_tool::JointTemps
  :super ros::object
  :slots (_names _temps ))

(defmethod interbotix_xsarm_diagnostic_tool::JointTemps
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:temps __temps) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _names __names)
   (setq _temps __temps)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:temps
   (&optional __temps)
   (if __temps (setq _temps __temps)) _temps)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; int32[] _temps
    (* 4    (length _temps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _temps
     (write-long (length _temps) s)
     (dotimes (i (length _temps))
       (write-long (elt _temps i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _temps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _temps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get interbotix_xsarm_diagnostic_tool::JointTemps :md5sum-) "2c3b043513eb09ccdff55ab4d97383c3")
(setf (get interbotix_xsarm_diagnostic_tool::JointTemps :datatype-) "interbotix_xsarm_diagnostic_tool/JointTemps")
(setf (get interbotix_xsarm_diagnostic_tool::JointTemps :definition-)
      "# Holds the temperatures [C] for the specified joints

string[] names
int32[] temps

")



(provide :interbotix_xsarm_diagnostic_tool/JointTemps "2c3b043513eb09ccdff55ab4d97383c3")


