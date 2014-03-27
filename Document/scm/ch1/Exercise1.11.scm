;;; Procedure by means of a recursive process.
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))

;;; Procedure by means of an iterative process.
(define (f n)
  (define (f-iter n i f1 f2 f3)
    (cond ((< n 3) n)
	  ((= i n) (+ f1 (* 2 f2) (* 3 f3)))
	  (else (f-iter n (+ i 1) f2 f3 (+ f1 (* 2 f2) (* 3 f3))))))
  (f-iter n 3 0 1 2))

