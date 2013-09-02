(define (reverse-m l)
  (if (null? (cdr l))
    (list (car l))
    (append (reverse-m (cdr l)) (list (car l)))
    )
  )

(reverse-m (list 1 2 3))
