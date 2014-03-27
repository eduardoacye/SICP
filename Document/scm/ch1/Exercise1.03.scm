;;; square : number -> number
;;; calculate the square of the number x
;;; use : (square -5) ]=> 25
(define (square x) (* x x))

;;; sum-of-squares-largest-two : number x number x number -> number
;;; sum the squares of the two largest numbers of the given three
;;; use : (sum-of-squares-largest-two 5 3 4) ]=> 41
(define (sum-of-squares-largest-two a b c)
  (if (> a b)
      (+ (square a) (square (if (> b c) b c)))
      (+ (square b) (square (if (> a c) a c)))))
