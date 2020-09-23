(define (product term a next b)
	(if (> a b)
		1
		(* (term a)
			(product term (next a) next b))))


 (define (product-iter term a next b)
 	(define (iter a result)
 		(if (> a b)
 			result
 			(iter (next a) (* (term a) result)))
 	)
 	(iter a 1))


(define (factorial n)
	(product-iter (lambda (x) x) 1 (lambda (x) (+ x 1)) n))


(define (fn n) (
	/
	(if (even? n) (+ n 2.0) (+ n 1))
	(if (even? n) (+ n 1.0) (+ n 2))
))

(define (pi-4 n) (* 4 (product-iter fn 1 (lambda (x) (+ x 1)) n)))