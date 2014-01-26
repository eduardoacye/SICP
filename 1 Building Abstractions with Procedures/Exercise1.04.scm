;; Exercise 1.4 {Ejercicio 1.4}
;; Observa que el modelo de evaluación permite combinaciones cuyos operadores son
;; expresiones compuestas. Usa esta observación para describir el comportamiento
;; del siguiente procedimiento.

(define (a-mas-b-positivo a b)
  ((if (> b 0) + -) a b))

; la operación que se desea realizar es  a + |b|. Si el valor de b es ne-
; gativo o positivo no altera el resultado de la operación. Se presentan entonces
; dos casos: a+|+b| y a+|-b|. si b es negativo se realiza la operación a-(-b). De
; lo contrario se realiza a+b.
