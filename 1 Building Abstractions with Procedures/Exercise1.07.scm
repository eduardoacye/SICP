(define-syntax si
  (syntax-rules ()
    ((si condicion esto si-no)
     (if condicion esto si-no))))

(define (raiz-cuadrada-iter estimado x)
  (si (es-buen-estimado? estimado x)
      estimado
      (raiz-cuadrada-iter (mejorar estimado x) x)))

(define (mejorar estimado x)
  (promediar (/ x estimado)
	     estimado))

(define (promediar a b)
  (/ (+ a b) 2))

(define (diferencia a b)
  (abs (- a b)))

(define (es-buen-estimado? estimado x)
  (> .001(diferencia x (al-cuadrado estimado))))

(define (al-cuadrado x)
  (* x x))

(define (raiz-cuadrada x)
  (raiz-cuadrada-iter 1.0 x))


;; Intentando mejorar la función es-buen-estimado?
(define (raiz-cuadrada-iter2 estimado viejo-estimado x)
  (si (es-buen-estimado2? estimado
			  viejo-estimado)
      estimado
      (raiz-cuadrada-iter2 (mejorar estimado x)
			   estimado
			   x)))

(define (es-buen-estimado2? estimado viejo-estimado)
  (<= (diferencia estimado viejo-estimado) .001))

(define (raiz-cuadrada2 x)
  (raiz-cuadrada-iter2 1.0 0.0 x))
