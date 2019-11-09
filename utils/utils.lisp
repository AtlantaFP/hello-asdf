(in-package :com.rv.utils)

(defun sum-function (fun n step)
  "sums integer i where 0 <= i <= N, incrementing by stepsize STEP."
  (reduce #'+ (mapcar fun (loop for i from 0 to n by step collecting i))))

