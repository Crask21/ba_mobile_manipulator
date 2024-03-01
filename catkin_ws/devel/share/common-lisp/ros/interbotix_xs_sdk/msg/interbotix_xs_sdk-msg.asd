
(cl:in-package :asdf)

(defsystem "interbotix_xs_sdk-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "JointGroupCommand" :depends-on ("_package_JointGroupCommand"))
    (:file "_package_JointGroupCommand" :depends-on ("_package"))
    (:file "JointSingleCommand" :depends-on ("_package_JointSingleCommand"))
    (:file "_package_JointSingleCommand" :depends-on ("_package"))
    (:file "JointTrajectoryCommand" :depends-on ("_package_JointTrajectoryCommand"))
    (:file "_package_JointTrajectoryCommand" :depends-on ("_package"))
  ))