
                                        ; test
                                        ; this should be ignored be our interpreter :S
                                        ; and this too
(print 'loading 'corelib)


(define rest cdr)

(define list-length
  (lambda (L)
    (if L
        (+ 1 (list-length (cdr L)))
      0)))


; I am looking forward to get this working:
(define rest-test ; that's not rest as in rest services ... but I hope
                  ; you already knew that
  (lambda (a &rest b)
    (begin
     (print 'a 'is a)
     (print 'rest 'is &rest)
     (print 'b 'is b))))

;; (define inc
;;   (lambda x
;;     (if x
;;         ((lambda ()
;;            (print 'cdr 'is (cdr x))
;;            (print 'called 'inc 'for 'x '= (cdr  x))
;;            (cons (+ 1 x) (inc (cdr x)))
;;            ))
;;       nil
;;       )
;;     )
;;   )
;(inc nil)
;(inc 1 2 3 4 5 6 7 8 9)



(define factorial
  (lambda (N)
    (if (= N 1)
        1
      (* N (factorial (- N 1))))))


                                        ; remainder (% operator)
                                        ; returns 0 if x is divisible by d
(define rem 
  (lambda (x d)
    (- x (* (/ x d) d))))

(define is-even
  (lambda (x)
    (if (= 0 (rem x 2))
        t
      nil)))

(define is-odd
  (lambda (x)
    (if (is-even x)
        nil
      t)))

(define is-divisible
  (lambda (x y)
    (if (= y 1)
        nil
      (if (>= y x)
          nil
        (if (= 0 (rem x y))
            t
          nil
          )))))

(define is-prime
  (lambda (x)
    (if (is-even x)
        nil
      (is-prime-rec x 1))))

(define is-prime-rec
  (lambda (x y)
    (if (is-divisible x y)
        nil
      (if (>= y x)
          t
        (is-prime-rec x (+ 2 y))))))

(define is-prime-on-list
  (lambda (x)
    (if x
        (begin
         (print 'prime-check (car x) (is-prime (car x) 1))
         (is-prime-on-list (rest x)))
      nil)))


(is-prime-on-list '(1 2 3 4 5 6 7 8 9 10 11 12 13 103))





