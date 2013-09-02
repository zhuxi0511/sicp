(define (sqrt-iter new_guess guess x)
  (if (good-enough2? new_guess guess)
    new_guess
    (sqrt-iter (improve new_guess x) new_guess x)
    )
  )
(define (improve guess x)
  (/ (+ (/ x guess) guess) 2)
  ) 
(define (good-enough? guess x)
  ( < (abs 
        (- (square guess) x))
      0.001)
  )
(define (good-enough2? new_guess guess)
  (< 
    (/ (abs (- new_guess guess)) guess)
    0.000001
    )
  )

(sqrt-iter 1.0 0 20000000000000000000000000000000000)
(sqrt-iter 1.0 0 3)
