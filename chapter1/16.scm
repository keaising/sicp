(define (exp b n)
    (fast-exp b n 1))

(define (fast-exp b n a)
    (cond ((= n 0) a)
          ((odd? n) (fast-exp b (- n 1) (* a b)))
          ((even? n) (fast-exp (square b) (/ n 2) a))))