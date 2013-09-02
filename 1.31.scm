(load "sum.scm")

(define (factorial n)
  (define (identify x) x)
  (product identify 1 inc n)
  )

(factorial 10)
(factorial 4)

(define (pi-sum up-count)
  (define (term x) (/ (* (- x 1) (+ x 1)) (* x x)))
  (define (next x) (inc (inc x)))
  (* 4. (product term 3 next up-count))
  )

(pi-sum 100)
(pi-sum 1000)
(pi-sum 10000)
(pi-sum 100000) ;这个爆栈了。。。
