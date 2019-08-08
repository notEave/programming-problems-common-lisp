(defun greet (name)
  (write-line (concatenate 'string "Hello " name) *standard-output*))

(defun prompt (message)
  (format *query-io* "~a " message)
  (finish-output *query-io*)
  (read-line *query-io*))

(defun main ()
  (greet (prompt "What is your name?")))

(main)
