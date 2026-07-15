;; 2. Function
(defun greet (name)
  (concatenate 'string "Hello, " name))

;; 3. Global variables (naming convention *...*)
(defparameter *n* 5)
(defparameter *world* "World")
(defparameter *numbers* '(3 1 4 1 5))
(defparameter *ages* '(("Alice" . 30) ("Bob" . 25)))  ; association list

;; 4. Output
(format t "~a~%" (greet *world*))

;; 5. Condition
(cond ((> *n* 3) (format t "big~%"))
      ((= *n* 3) (format t "medium~%"))
      (t         (format t "small~%")))

;; 6. For
(dolist (x *numbers*)
  (format t "~a~%" (* x 2)))

;; 7. While
(loop while (> *n* 0)
      do (decf *n*))

;; 8. Recursion (Lisp's natural style)
(defun factorial (k)
  (if (<= k 1)
      1
      (* k (factorial (- k 1)))))

;; 9. Errors (the "condition" system)
(handler-case
    (format t "~a~%" (/ 10 0))
  (division-by-zero ()
    (format t "cannot divide~%")))
