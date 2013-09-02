(define (equal? l1 l2) 
  (cond ( (and (null? l1) (null? l2)) true)
        ;( (or (null? l1) (null? l2)) false)
        ( (not (eq? (car l1) (car l2))) false)
        ( else (equal? (cdr l1) (cdr l2)))
        )
  )

(equal? '(a b c) '(a b c))
