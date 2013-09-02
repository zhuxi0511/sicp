(define (max_two x y z)
  (if (> x y)
    (+ x (if (> y z) y z))
    (+ y (if (> x z) x z))
    )
  )

(max_two 1 2 3)
(max_two 123 2 3)
