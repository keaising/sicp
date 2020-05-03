(define (product a b)
    (fast-product a b 0))

(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (fast-product a b sum)
    (cond ((= b 0) sum)
          ((odd? b) (fast-product a (- b 1) (+ a sum)))
          ((even? b) (fast-product (double a) (halve b) sum))))