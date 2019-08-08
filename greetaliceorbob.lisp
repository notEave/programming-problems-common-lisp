(defun prompt (message)
  (format *query-io* "~a " message)
  (finish-output *query-io*)
  (read-line *query-io*))

(defun alice-or-bob (name)
  (or
   (string-equal name "Bob")
   (string-equal name "Alice")))

(defun greet (name)
  (let ((greeting "Hello"))
    (if (alice-or-bob name)
        (write-line (concatenate 'string greeting " " name "!"))
        (write-line (concatenate 'string greeting "!")))))

(defun greet-alice-or-bob ()
  (greet (prompt "What is your name?")))
