(define (pascal r c)
  (if (or (= r c) (= c 0))
      1
      (+ (pascal (- r 1) c) (pascal (- r 1) (- c 1)))))
