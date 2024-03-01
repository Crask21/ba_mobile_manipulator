
(cl:in-package :asdf)

(defsystem "interbotix_xsarm_joy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmJoy" :depends-on ("_package_ArmJoy"))
    (:file "_package_ArmJoy" :depends-on ("_package"))
  ))