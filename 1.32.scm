(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner (term a) result))
      )
    )
  (iter a null-value)
  )

(define (sum term a next b)
  (accumulate + 0 term a next b)
  )

(define (product term a next b)
  (accumulate * 1 term a next b)
  )
