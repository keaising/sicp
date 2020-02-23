; run test script
(load "p15-newton-iter.scm")

(define (good-enough? guess x)
	(< (abs (/ (- guess x) guess)) 0.001))

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (sqrt-iter (improve guess x)
                   x)))

(sqrt 2)
(sqrt 0.00009)
(sqrt 30000000000000000000000000000000)