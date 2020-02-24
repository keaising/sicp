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

(define (good-enough old-guess new-guess)
	(> 
		0.001 
		(abs (/ (- old-guess new-guess) old-guess))
	)
)

(define (sqrt-new x y)
	(if (good-enough x y) 
		y
		(sqrt-new x (next x y))))

(sqrt-new 2 1)
