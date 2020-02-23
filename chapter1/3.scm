(define (big_two_sum a b c)
	(cond ((and (> a c) (> b c)) (+ a b))
		((and (> a b) (> c b)) (+ a c))
		((and (> c a) (> b a)) (+ b c))))

(big_two_sum 3 2 1)
