; 1. Comment

; 2. Function
(define (greet name)
  (string-append "Hello, " name))

; 3. Variables
(define n 5)
(define world "World")
(define numbers '(3 1 4 1 5))
(define ages '(("Alice" . 30) ("Bob" . 25)))

; 4. Output
(display (greet world)) (newline)

; 5. Condition
(cond ((> n 3) (display "big"))
      ((= n 3) (display "medium"))
      (else    (display "small")))
(newline)

; 6. For
(for-each (lambda (x) (display (* x 2)) (newline)) numbers)

; 7. "While": named loop in TAIL recursion
;    (guaranteed not to grow the stack: it IS a loop)
(let countdown ((k n))
  (unless (= k 0)
    (countdown (- k 1))))

; 8. Recursion
(define (factorial k)
  (if (<= k 1) 1 (* k (factorial (- k 1)))))
(display (factorial 5)) (newline)

; 9. Errors (R7RS)
(display
  (guard (e (#t "cannot divide"))
    (/ 10 0)))
(newline)
