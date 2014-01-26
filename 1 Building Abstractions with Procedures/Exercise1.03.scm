;; Exercise 1.3 {Ejercicio 1.3}
;; Define un procedimiento que tome tres números como argumentos y regrese la su-
;; ma de los cuadrados de los dos números mas grandes.

(define (cuadrado x) (* x x))
(define (suma-cuadrados x y)
  (+ (cuadrado x) (cuadrado y)))
(define (mas-grande x y)
  (if (> x y) x y))

(define (suma-de-los-cuadrados-mas-grandes x y z)
  (if (> x y)
      (suma-cuadrados x (mas-grande y z))
      (suma-cuadrados y (mas-grande x z))))
