;;; Newton's method for cube roots is based on the fact that if y is an approximation
;;; to the cube root of x, then a better approximation is given by the value
;;; (x/y^2 + 2y)/3
;;; Use this formula to implement a cube-root procedure analogous to the square-root
;;; procedure

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
