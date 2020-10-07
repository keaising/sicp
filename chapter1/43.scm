(define (compose f g)
        (lambda (x) (f (g x))))

(define (repeated f n)
        (define (r i result)
                (if (= i n)
                    result
                    (r (+ i 1) (compose f result))))
        (r 1 f))

(define inc (lambda (x) (+ x 1)))

(define (plus10 x) ((repeated inc 10) x))

(plus10 5)

((repeated square 2) 5)

(define (repeated-rec f n)
        (if (= n 1)
            f
            (compose f (repeated-rec f (- n 1)))))

((repeated-rec square 2) 5)