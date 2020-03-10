(define (next x y)
	(/ 
		(+ 
			(/ x (square y)) 
			(* 2 y)) 
		3))

(define (square x)
	(* x x))

(define (cube x)
	(* x x x))

(define (good-enough target guess)
	(> 
		0.0000000001 
		(abs (/ (- target (cube guess)) target))
	)
)

(define (sqrt-new target guess)
	(if (good-enough target guess) 
		guess
		(sqrt-new target (next target guess))))
