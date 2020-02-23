(define (next x y)
	(/ 
		(+ 
			(/ x (square y)) 
			(* 2 y)) 
		3))

(define (square x)
	(* x x))

(define (good-enough x y)
	(> 
		0.0001 
		(abs 
			(- 
				x 
				(square y)
			)
		)
	)
)

(define (sqrt-new x y)
	(if (good-enough x y) 
		y
		(sqrt-new x (next x y))))

(sqrt-new 2 1)
