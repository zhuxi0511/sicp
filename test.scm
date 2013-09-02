(define (f x)
  (cond ((< 0 x) (* 2 x))
        (else (f (+ 1 x)))
        )
  )

(+ (f (/ 4 3)) (f (/ -4 3)))

(define (memq item x)
  (cond ((null? x) false)
        ((eq? item (car x)) x)
        (else (memq item (cdr x)))
        )
  )
