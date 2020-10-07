(define (n i) 1.0)

(define (d i) 
    (if (= 0 (remainder (+ 1 i) 
                        3))
        (*  2.0 
            (/ (+ 1 i) 
               3))
        1.0))

(load "37.scm")


(+ 2 (cont-frac n d 100))