;;; Structure and Interpretation of Computer Programs
;;; Exercise 1.13
;;;

;; Prove that 'Fib(n)' is the closest integer to:
;; '(φ^n)/sqrt(5)', where 'φ = (1+sqrt(5))/2'.
;; Hint: Let 'ψ = (1-sqrt(5))/2'. Use induction
;; and the definition of the Fibonacci numbers to
;; prove that: 'Fib(n)=((φ^n)-(ψ^n))/sqrt(5)'.

;; Fib(1) = ((1+sqrt(5)/2)-(1-sqrt(5)/2))/sqrt(5)
;;        = ((1+sqrt(5)-1+sqrt(5))/2)/sqrt(5)
;;        = (2sqrt(5)/2)/sqrt(5)
;;        = sqrt(5)/sqrt(5)
;;        = 1

;; Fib(n-1) and Fib(n-2) satisfy the equation
;; 
;; Fib(n) = Fib(n-1) + Fib(n-2)
;; = ((φ^(n-1)-ψ^(n-1))+(φ^(n-2)-ψ^(n-2)))/sqrt(5)
;; = 1/sqrt(5) (φ^(n-1)+φ^(n-2)-ψ^(n-1)-ψ^(n-2))
;; = 1/sqrt(5) (φ^(n-2)(1+φ) - ψ^(n-2)(1+ψ))
;; = 1/sqrt(5) (φ^(n-2)(φ^2) - ψ^(n-2)(ψ^2))
;; = 1/sqrt(5) (φ^n - ψ^n)
;;
;; Done!
