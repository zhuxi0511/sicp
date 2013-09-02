(define one
  (lambda (f) 
    (lambda (x) (f x))))

(define two
  (lambda (f)
    (lambda (x) (f (f x)))
    )
  )


(define (plus a b)
  (lambda (f) 
    (lambda (x) ((a f) ((b f) x)))
    )
  )

(define (plus a b)
  (lambda (f) 
    (lambda (x)
      ((lambda (y) ((a f) y)) ((b f) x))         
      ))
  )


(plus one two)
