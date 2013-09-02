(define (sum term a next b)
  (accumulate + 0 term a next b)
  )

(define (product term a next b)
  (accumulate * 1 term a next b)
  )

(define (accumulate method null-value term a next b)
  (define (filter? x) true)
  (filtered-accumulate filter? method null-value term a next b) 
  )

(define (filtered-accumulate filter? method null-value term a next b)
  (define term-value 
    (if (filter? a)
      (term a)
      null-value
      ))
  (if (> a b)
    null-value 
    (method term-value (filtered-accumulate filter? method null-value term (next a) next b))
    )
  )

(define (inc a)
  (+ 1 a)
  )

(define (identify a) a)
