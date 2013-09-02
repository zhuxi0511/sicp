(load "fixed-point.scm")

(cont-frac-iter (lambda (i) 1.0)
           (lambda (i) 
             (cond ((let ((x (remainder i 3)))
                     (or (= 1 x) (= 0 x))
                     )
                   1)
                   (else (* 2 (/ (+ 1 i) 3)))
                   )
             )
           2000
           )
