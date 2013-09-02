(define (cont-frac n d k)
  (define (frac count)
    (if (> count k)
      0
      (/ (n count) (+ (d count) (frac (+ 1 count))))
      )
    )
  (frac 1)
  )

(define (cont-frac-iter n d k)
  (define (iter count result)
    (if (= 0 count)
      result
      (iter (- count 1) (/ (n count) (+ (d count) result)))
      )
    )
  (iter k 0)
  )

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           2000
           )
(cont-frac-iter (lambda (i) 1.0)
                (lambda (i) 1.0)
                2000
                )
