(in-package :com.rv.hello)

(defun hello-program ()
  (format t "This is a simple program that prints hello and then calls rv-utils:sum-function~%")
  (format t "~A~%" (rv-utils:sum-function (lambda (x) (* x x)) 10 2)))
