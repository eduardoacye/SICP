;; Exercise 1.2 {Ejercicio 1.2}
;; Traduce la siguiente expresión a su forma prefija.


; 5 + 4 + (2 - (3 - (6 + 4/5)))
;-------------------------------
;     3 (6 - 2) (2 - 7)

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))
