(defun prompt (message)
  (format *query-io* "~a: " message)
  (finish-output *query-io*)
  (read-line *query-io*))

(defun prompt-integer (message)
  (let ((response (prompt message)))
    (or (parse-integer response :junk-allowed t) 0)))

(defun mult-of-3-or-5 (val)
  (or
   (= (mod val 3) 0)
   (= (mod val 5) 0)))

(defun seq (end)
  (loop for i from 1 to end collect i))

(defun mod-three-five ()
  (let* ((ceil (prompt-integer "Sum multipliers of 3 or 5 until number?"))
         (seq (seq ceil))
         (filtered (remove-if (complement #'mult-of-3-or-5) seq))
         (sum (reduce '+ filtered)))
    (format *standard-output* "~a~%" sum)))

(mod-three-five)
