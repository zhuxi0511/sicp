(define (cont-frac-iter-plus n d k)
  (define (iter count result)
    (if (= 0 count)
      result
      (iter (- count 1) (/ (n count) (- (d count) result)))
      )
    )
  (iter k 0)
  )

(define (tan-cf x k)
  (cont-frac-iter-plus (lambda (i) 
                    (if (= 1 i)
                       x
                       (* x x)))
                  (lambda (i)
                    (- (* 2 i) 1))
                  k
                  )
  )

(tan-cf 1 1000.)
