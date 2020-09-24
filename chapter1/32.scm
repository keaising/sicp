(define (accumulate combiner null-value term a next b)
    (define (calculate term a next b)
        (if  (> a b)
            null-value
            (combiner 
                (term a)
                (calculate term (next a) next b))))
    (calculate term a next b))

(define (accumulate-iter combiner null-value term a next b)
    (define (calculate term a next b)
        (define (iter a result)
            (if (> a b)
                result
                (iter
                    (next a)
                    (combiner
                        (term a)
                        result))))
        (iter a null-value))
    (calculate term a next b))



(define (sum a b)
    (accumulate-iter + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))

(define (product a b)
    (accumulate-iter * 1 (lambda (x) x) a (lambda (x) (+ x 1)) b))