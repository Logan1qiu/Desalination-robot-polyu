
(cl:in-package :asdf)

(defsystem "ipa_building_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CheckCoverage" :depends-on ("_package_CheckCoverage"))
    (:file "_package_CheckCoverage" :depends-on ("_package"))
    (:file "ExtractAreaMapFromLabeledMap" :depends-on ("_package_ExtractAreaMapFromLabeledMap"))
    (:file "_package_ExtractAreaMapFromLabeledMap" :depends-on ("_package"))
  ))