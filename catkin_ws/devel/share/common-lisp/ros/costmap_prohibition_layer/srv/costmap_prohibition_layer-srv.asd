
(cl:in-package :asdf)

(defsystem "costmap_prohibition_layer-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AddProhibitedPoints" :depends-on ("_package_AddProhibitedPoints"))
    (:file "_package_AddProhibitedPoints" :depends-on ("_package"))
    (:file "ClearProhibitedPoints" :depends-on ("_package_ClearProhibitedPoints"))
    (:file "_package_ClearProhibitedPoints" :depends-on ("_package"))
    (:file "GetProhibitedPoints" :depends-on ("_package_GetProhibitedPoints"))
    (:file "_package_GetProhibitedPoints" :depends-on ("_package"))
    (:file "SetProhibitedPoints" :depends-on ("_package_SetProhibitedPoints"))
    (:file "_package_SetProhibitedPoints" :depends-on ("_package"))
  ))