;;; Computing square roots (book procedures)
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;; Modified square-root procedure
(define (sqrt-iter-mod guess old-guess x)
  (if (good-enough-mod? guess old-guess)
      guess
      (sqrt-iter-mod (improve guess x)
		     guess
		     x)))

(define (good-enough-mod? guess old-guess)
  (<= (abs (- guess old-guess)) .001))

(define (sqrt-mod x)
  (sqrt-iter-mod 1.0 0.0 x))


;;; Verify how good is a square root aproximation
(define (sqrt-error proc x)
  (define result (proc x))
  (- x (square result)))

(define (sqrt-compare proc1 proc2 x)
  (define error1 (sqrt-error proc1 x))
  (define error2 (sqrt-error proc2 x))
  (exact->inexact (/ error1 error2)))
