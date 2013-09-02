(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
    )
  )
(define (improve guess x)
  (/ 
    (+ 
      (/ x (square guess))
      (* 2 guess)
      )
    3
    )
  ) 
(define (good-enough? guess x)
  ( < (abs 
        (- (* guess guess guess) x))
      0.01)
  )

(sqrt-iter 1.2 20.0)
(sqrt-iter 1.0 3)
