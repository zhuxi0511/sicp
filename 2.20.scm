(define (same-parity a . l)
  (define (filter-m condition l)
    (define (judge i)
      (if (= (remainder i 2) condition)
        (list i)
        ()
        )
      )
    (if (null? (cdr l))
      (judge (car l))
      (append (judge (car l)) (filter-m condition (cdr l)))
      )
    )
  (append (list a) (filter-m (remainder a 2) l))
  )

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)