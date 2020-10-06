(define (filtered-accumulate filter combiner null-value term a next b)
    (define (calculate term a nex b)
        (if (> a b)
            null-value
            (combiner
                (if (filter a)
                    (term a)
                    null-value)
                (calculate term (next a) next b))))
    (calculate term a next b))


(define (prime? a)
    (define (helper x a)
        (cond ((= x a) #t)
            ((= 0 (remainder a x)) #f)
            (else (helper (+ x 1) a))))
    (cond ((= a 1) #f)
        ((= a 2) #t)
        (else (helper 2 a))))

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (modulo a b))))