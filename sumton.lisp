(defun prompt (message)
  (format *query-io* "~a " message)
  (finish-output *query-io*)
  (read-line *query-io*))

(defun prompt-integer (message)
  (or (parse-integer (prompt message) :junk-allowed t) 0))

(defun seq (ceil)
  (loop
     for i from 1 to ceil collect i))

(defun sumton ()
  (let* ((n (prompt-integer "Count until what integer?:"))
         (r (reduce '+ (seq n))))
    (format *standard-output* "~a~%" r)
    r))

(sumton)
