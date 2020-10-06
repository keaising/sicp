(load "33.scm")

(define (prime-sum a b)
    (filtered-accumulate prime? + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))


(define (gcd-sum a b)
    (filtered-accumulate (lambda (x) (= (gcd b x) 1)) + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))

(prime-sum 2 10)


(gcd-sum 2 10)