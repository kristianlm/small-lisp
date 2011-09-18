
                                        ; This is a very basic library
                                        ; for a rather basic LISP
                                        ; interpreter.
                                        ;
                                        ; by Kristian Lein-Mathisen
                                        ; 2011, built on Andru
                                        ; Luvisi's lisp
                                        ; interpreter.
                                        ;
                                        ;
                                        ; GPL License




'=====================
'|..loading-corelib..|
'=====================

                                        ; use better naming (according
                                        ; to this article I read, you
                                        ; don't wanna use cdr)
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

(define not
  (lambda (x)
    (if x
        nil
      t)))


(define factorial
  (lambda (N)
    (if (= N 1)
        1
      (* N (factorial (- N 1))))))

                                        ; remainder (% operator)
                                        ; returns 0 if x is divisible
                                        ; by d. the implementation is
                                        ; tricky: we count on the
                                        ; "rounding-off" at division and
                                        ; subtrack from the original

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

                                        ; does y divide x?
(define is-divisible
  (lambda (x y)
    (if (= y 1)
        nil
      (if (>= y x)
          nil
        (if (= 0 (rem x y))
            t
          nil)))))

(define is-prime
  (lambda (x)
    (if (is-even x)
        nil
      (is-prime-rec x 1))))
                                        ; assumes x is odd
(define is-prime-rec
  (lambda (x y)
    (if (is-divisible x y)
        nil
      (if (>= y x)
          t
        (is-prime-rec x (+ 2 y))))))

(define is-prime-on-list
  (lambda (x)
    (if (not x)
        nil
        (begin
         (print 'prime-check (car x) (is-prime (car x) 1))
         (is-prime-on-list (rest x))))))


(is-prime-on-list '(1 2 3 4 5 6 7 8 9 10 11 12 13 103))





