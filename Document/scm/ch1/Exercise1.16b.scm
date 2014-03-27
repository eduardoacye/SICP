;;; Iterative exponentiation process using successive squaring
(define (fast-expt b n)
  (define (fast-expt-iter b n a)
    (cond ((= n 0)             a)
	  ((and (even? n)
		(not (= n 2))) (fast-expt-iter b (/ n 2) (* a (square b))))
	  (else                (fast-expt-iter b (- n 1) (* a b)))))
  (fast-expt-iter b n 1))

;;; Another way to write the procedure is:
(define (fast-expt b n)
  (define (fast-expt-iter b n a)
    (cond ((= n 0)   a)
	  ((even? n) (fast-expt-iter (square b) (/ n 2) a))
	  (else      (fast-expt-iter b (- n 1) (* a b)))))
  (fast-expt-iter b n 1))
