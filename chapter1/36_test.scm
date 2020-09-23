(load "36.scm")

(load "36-formula.scm")
(load "p48-average-damp.scm")

(fixed-point formula 10)

(fixed-point (average-damp formula) 10)
