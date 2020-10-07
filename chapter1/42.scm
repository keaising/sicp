(define (compose f g)
        (lambda (x) (f (g x))))

(define inc (lambda (x) (+ x 1)))
((compose square inc) 6)