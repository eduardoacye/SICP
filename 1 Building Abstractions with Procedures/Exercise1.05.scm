;; Exercise 1.5 {Ejercicio 1.5}
;; Ben Bitdiddle inventó una prueba para determinar si el intérprete en el que
;; trabaja utiliza evaluación aplicativa o evaluación normal. Define los siguien-
;; tes procedimientos:

(define (p) (p))

(define (prueba x y)
  (if (= x 0)
      0
      y))

;; Después evalúa:

(prueba 0 (p))

; En la evaluación aplicativa, los argumentos son evaluados primero, por lo tanto
; la evaluación de (p) nunca terminará y el intérprete se ciclará.
; 
; En la evaluación normal, los argumentos son evaluados hasta ser requeridos, y
; debido a que x es evaluado a 0 en la condicional del procedimiento prueba, nun-
; ca será necesario evaluar a (p).


