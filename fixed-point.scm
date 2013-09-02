(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance)
    )
  (define (try guess)
    (let ((next (f guess)))
          (cond ((close-enough? guess next) next)
                (else 
                  (newline)
                  (display next)
                  (try next))
            )
          )
    )
  (try first-guess)
  )

(define (average a b)
  (/ (+ a b) 2)
  )

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
