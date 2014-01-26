;;; Structure and Interpretation of Computer Programs
;;; Exercise 1.6
;;;

;; Alyssa P. Hacker doesn't see why 'if' needs to be provided as a special form.
;; "Why can't I just define it as an ordinary procedure in terms of 'cond'?" she
;; asks.
;; 
;; Alyssa's friend Eva Lu Ator claims this can indeed be done, and she defines a
;; new version of 'if':

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

;; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

;; Delighted, Alyssa uses 'new-if' to rewrite the square-root program:

(define (average a b)
  (/ (+ a b) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

;; What happens when Alyssa attempts to use this to compute square roots? Explain.
;;; Scheme uses applicative order evaluation for evaluating functions, this means
;;; that the evaluator is going to evaluate all the arguments of the function.


;;; In the square root procedure, 'new-if' takes three arguments:
;;;  # (good-enough? guess x)
;;;  # guess
;;;  # (sqrt-iter (improve guess x) x)
;;; There is no problem evaluating the first argument (that's what the evaluator
;;; does with the 'if' special form. The second argument is a number (no problem
;;; there). However, the third argument is a recursive call to the procedure that
;;; evaluated the 'new-if' function; evaluating this third argument, causes an
;;; infinite evaluation of the 'new-if' function call inside the body of the third
;;; argument. That's why the 'if' special form is neccessary. (with other orders
;;; of evaluation the 'new-if' function might work just fine).

