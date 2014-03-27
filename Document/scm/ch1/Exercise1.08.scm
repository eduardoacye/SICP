(define (improve guess n)
  (/ (+ (/ n
	   (* guess guess))
	(* 2 guess))
     3))

(define (good-enough? guess n)
  (> .001 (abs (- n (* guess guess guess)))))

(define (cube-root n)
  (define (cube-root-iterative guess n)
    (if (good-enough? guess n)
	guess
	(cube-root-iterative (improve guess n) n)))
  (cube-root-iterative 1.0 n))
