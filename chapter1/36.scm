(define tolerance 0.00001)

(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess step)
		(display-info guess step)
		(let ((next (f guess)))
			(if (close-enough? guess next)
				(begin 
					(display-info next (+ 1 step))
					next)
				(try next (+ 1 step)))))
	(try first-guess 1))


(define (display-info msg step)
	(display "Step: ")
	(display step)
	(display " ")
	(display msg)
	(newline))
