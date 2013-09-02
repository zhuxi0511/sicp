(load "fixed-point.scm")

(fixed-point (lambda (x) (/ (log 1000.) (log x))) 2.0)
(fixed-point (lambda (x) (average x (/ (log 1000.) (log x)))) 2.0)
