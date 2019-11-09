;;
;; hello-asdf.asd
;;
;; Simple Project Example using ASDF
;;

;;
;; defsystem form is what we use to define a system
;; A bunch of different types of metadata can be applied here:
;; - :bug-tracker
;; - :mailto
;; - :long-name 
;; - :long-decription
;; - :source-control
;; - many more.
;;

;; NOTE: If intending to include software library in Quicklisp it is strongly
;; recommended to defined the following fields in system description:
;; - :description
;; - :version
;; - :author
;; - :licence
(defsystem "hello-asdf"
  :description "hello-asdf: our first Lisp system."
  :version "0.0.1"
  :author "Joe Developer <some.email@gmail.com>"
  :licence "Public Domain"
  :depends-on ("alexandria")
  :serial t
  :entry-point "rv-hello:hello-program"
  :components ((:module "utils"
		:serial t
		:components ((:file "packages")
			     (:file "utils")))
	       (:file "packages")	       
	       (:file "hello")))
