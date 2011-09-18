
                                        ; test
                                        ; this should be ignored be our interpreter :S
                                        ; and this too
(quote (loading corelib))

(define inc
  (lambda (x)
    (+ 1 x)))


;(define fib (lambda (x) 
 ;(if ((= x 0) 1)
                                       ;                 ((= x 1) 1)
  ;  (+ (+ (fib (- x 1)) (fib (- x 2))))
;))
 ;(fib 23))
;(/ 10 3)
;(* (/ 10 3) 3)

(define rem 
  (lambda (x d)
    (- x (* (/ x d) d))
    )
  )

(define is-even
  (lambda (x)
    (if (= 0 (rem x 2))
        t
      nil)
    )
  )

(define is-odd
  (lambda (x)
    (if (is-even x)
        nil
      t)
    )
  )

