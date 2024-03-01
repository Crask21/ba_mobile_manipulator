
(cl:in-package :asdf)

(defsystem "robotnik_elevator_interface_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ElevatorState" :depends-on ("_package_ElevatorState"))
    (:file "_package_ElevatorState" :depends-on ("_package"))
  ))