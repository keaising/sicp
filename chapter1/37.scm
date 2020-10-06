(define (cont-frac n d k)
    (define (helper x)
    	(if (= x k)
		(/ (n k) (d k))
		(/ (n x)
			(+ (d x) (helper (+ x 1))))))
	(helper 1))


(cont-frac (lambda (i) 1.0)
	(lambda (i) 1.0)
	1000)

(define (cont-frac-iter n d k)
	(define (cf i result)
		(if (= i 0)
			result
			(cf (- i 1)
				(/ (n i) (+ (d i) result)))))
	(cf (- k 1)
		(/ (n k) (d k))))

(cont-frac-iter (lambda (i) 1.0)
	(lambda (i) 1.0)
	1000)
