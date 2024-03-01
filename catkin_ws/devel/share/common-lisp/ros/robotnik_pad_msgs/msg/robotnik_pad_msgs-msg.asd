
(cl:in-package :asdf)

(defsystem "robotnik_pad_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MovementStatus" :depends-on ("_package_MovementStatus"))
    (:file "_package_MovementStatus" :depends-on ("_package"))
  ))