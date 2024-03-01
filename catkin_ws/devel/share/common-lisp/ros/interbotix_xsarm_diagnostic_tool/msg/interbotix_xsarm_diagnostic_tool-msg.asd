
(cl:in-package :asdf)

(defsystem "interbotix_xsarm_diagnostic_tool-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointTemps" :depends-on ("_package_JointTemps"))
    (:file "_package_JointTemps" :depends-on ("_package"))
  ))