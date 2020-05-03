
(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (fast-product a b)
    (cond ((= b 1) a)
          ((odd? b) (+ a (fast-product a (- b 1))))
          ((even? b) (fast-product (double a) (halve b)))))