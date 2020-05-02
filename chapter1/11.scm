(define (f-rec n)
    (rec n))

(define (rec n)
    (cond ((= n 1) 1)
        ((= n 2) 2)
        ((= n 3) 3)
        (else (+ (rec (- n 1)) (rec (- n 2)) (rec (- n 3))))))

(define (f-iter n)
    (iter 1 2 3 0 n))

(define (iter n1 n2 n3 count n)
    (cond ((< n 0) 0)
        ((< n 3) n)
        ((= count (- n 3)) n3)
        (else (iter n2 n3 (+ n1 n2 n3) (+ count 1) n))))