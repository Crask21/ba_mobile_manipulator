;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_modbus_register_bit)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_modbus_register_bit (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_MODBUS_REGISTER_BIT")
  (make-package "ROBOTNIK_MSGS::SET_MODBUS_REGISTER_BIT"))
(unless (find-package "ROBOTNIK_MSGS::SET_MODBUS_REGISTER_BITREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_MODBUS_REGISTER_BITREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_MODBUS_REGISTER_BITRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_MODBUS_REGISTER_BITRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_modbus_register_bitRequest
  :super ros::object
  :slots (_address _bit _value ))

(defmethod robotnik_msgs::set_modbus_register_bitRequest
  (:init
   (&key
    ((:address __address) 0)
    ((:bit __bit) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _address (round __address))
   (setq _bit (round __bit))
   (setq _value __value)
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:bit
   (&optional __bit)
   (if __bit (setq _bit __bit)) _bit)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int16 _address
    2
    ;; int16 _bit
    2
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _address
       (write-word _address s)
     ;; int16 _bit
       (write-word _bit s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _address
     (setq _address (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bit
     (setq _bit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::set_modbus_register_bitResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_modbus_register_bitResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::set_modbus_register_bit
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_modbus_register_bit :md5sum-) "69640e6c2ff2509eb8d9047b1c2b68df")
(setf (get robotnik_msgs::set_modbus_register_bit :datatype-) "robotnik_msgs/set_modbus_register_bit")
(setf (get robotnik_msgs::set_modbus_register_bit :request) robotnik_msgs::set_modbus_register_bitRequest)
(setf (get robotnik_msgs::set_modbus_register_bit :response) robotnik_msgs::set_modbus_register_bitResponse)

(defmethod robotnik_msgs::set_modbus_register_bitRequest
  (:response () (instance robotnik_msgs::set_modbus_register_bitResponse :init)))

(setf (get robotnik_msgs::set_modbus_register_bitRequest :md5sum-) "69640e6c2ff2509eb8d9047b1c2b68df")
(setf (get robotnik_msgs::set_modbus_register_bitRequest :datatype-) "robotnik_msgs/set_modbus_register_bitRequest")
(setf (get robotnik_msgs::set_modbus_register_bitRequest :definition-)
      "int16 address
int16 bit
bool value
---
bool ret

")

(setf (get robotnik_msgs::set_modbus_register_bitResponse :md5sum-) "69640e6c2ff2509eb8d9047b1c2b68df")
(setf (get robotnik_msgs::set_modbus_register_bitResponse :datatype-) "robotnik_msgs/set_modbus_register_bitResponse")
(setf (get robotnik_msgs::set_modbus_register_bitResponse :definition-)
      "int16 address
int16 bit
bool value
---
bool ret

")



(provide :robotnik_msgs/set_modbus_register_bit "69640e6c2ff2509eb8d9047b1c2b68df")


