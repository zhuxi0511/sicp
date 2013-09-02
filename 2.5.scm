(define (pow a x)
  (if (= 0 x)
    1
    (* a (pow a (- x 1)))
    )
  )

(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) (pow 2 x))
          ((= m 1) (pow 3 y))
          (else (error "ddddd"))
          )
    )
  dispatch
  )
(define (car z) (z 0))
(define (cdr z) (z 1))
;这里跪了 不知道为什么
