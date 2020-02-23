(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
				   x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (square x)
	(* x x))

; Must use 1.0 to float
(define (sqrt x)
	(sqrt-iter 1.0 x))


; scheme < p15-newton-iter.scm
; (load "p15-newton-iter.scm")

(sqrt 2)
