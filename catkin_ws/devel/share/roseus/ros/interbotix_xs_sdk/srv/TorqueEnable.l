;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_sdk::TorqueEnable)
  (if (not (find-package "INTERBOTIX_XS_SDK"))
    (make-package "INTERBOTIX_XS_SDK"))
  (shadow 'TorqueEnable (find-package "INTERBOTIX_XS_SDK")))
(unless (find-package "INTERBOTIX_XS_SDK::TORQUEENABLE")
  (make-package "INTERBOTIX_XS_SDK::TORQUEENABLE"))
(unless (find-package "INTERBOTIX_XS_SDK::TORQUEENABLEREQUEST")
  (make-package "INTERBOTIX_XS_SDK::TORQUEENABLEREQUEST"))
(unless (find-package "INTERBOTIX_XS_SDK::TORQUEENABLERESPONSE")
  (make-package "INTERBOTIX_XS_SDK::TORQUEENABLERESPONSE"))

(in-package "ROS")





(defclass interbotix_xs_sdk::TorqueEnableRequest
  :super ros::object
  :slots (_cmd_type _name _enable ))

(defmethod interbotix_xs_sdk::TorqueEnableRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) "")
    ((:name __name) "")
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _cmd_type (string __cmd_type))
   (setq _name (string __name))
   (setq _enable __enable)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; string _cmd_type
    4 (length _cmd_type)
    ;; string _name
    4 (length _name)
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd_type
       (write-long (length _cmd_type) s) (princ _cmd_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass interbotix_xs_sdk::TorqueEnableResponse
  :super ros::object
  :slots ())

(defmethod interbotix_xs_sdk::TorqueEnableResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass interbotix_xs_sdk::TorqueEnable
  :super ros::object
  :slots ())

(setf (get interbotix_xs_sdk::TorqueEnable :md5sum-) "023452ade9f3d4979c75bd4e0d60f0c9")
(setf (get interbotix_xs_sdk::TorqueEnable :datatype-) "interbotix_xs_sdk/TorqueEnable")
(setf (get interbotix_xs_sdk::TorqueEnable :request) interbotix_xs_sdk::TorqueEnableRequest)
(setf (get interbotix_xs_sdk::TorqueEnable :response) interbotix_xs_sdk::TorqueEnableResponse)

(defmethod interbotix_xs_sdk::TorqueEnableRequest
  (:response () (instance interbotix_xs_sdk::TorqueEnableResponse :init)))

(setf (get interbotix_xs_sdk::TorqueEnableRequest :md5sum-) "023452ade9f3d4979c75bd4e0d60f0c9")
(setf (get interbotix_xs_sdk::TorqueEnableRequest :datatype-) "interbotix_xs_sdk/TorqueEnableRequest")
(setf (get interbotix_xs_sdk::TorqueEnableRequest :definition-)
      "# Torque joints on/off

string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name              # name of the group if commanding a joint group or joint if commanding a single joint
bool enable              # set to 'true' to torque on or 'false' to torque off
---

")

(setf (get interbotix_xs_sdk::TorqueEnableResponse :md5sum-) "023452ade9f3d4979c75bd4e0d60f0c9")
(setf (get interbotix_xs_sdk::TorqueEnableResponse :datatype-) "interbotix_xs_sdk/TorqueEnableResponse")
(setf (get interbotix_xs_sdk::TorqueEnableResponse :definition-)
      "# Torque joints on/off

string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name              # name of the group if commanding a joint group or joint if commanding a single joint
bool enable              # set to 'true' to torque on or 'false' to torque off
---

")



(provide :interbotix_xs_sdk/TorqueEnable "023452ade9f3d4979c75bd4e0d60f0c9")


