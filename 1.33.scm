(load "math.scm")
(load "sum.scm")

(define (prime-sum a b)
  (filtered-accumulate prime? + 0 identify a inc b)
  )

(prime-sum 2 4)

(define (coprime-product n)
  (define (filter? x)
    (= 1 (gcd n x))
    )
  (filtered-accumulate filter? * 1 identify 1 inc (- n 1))
  )

(coprime-product 10)
(coprime-product 3)
(coprime-product 4)
