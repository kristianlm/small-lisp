# Mini-Lisp in C

This is a very small and limited Lisp interpreter taken from
[here](http://www.sonoma.edu/users/l/luvisi/sl3.c). It's lightweightness
is very useful in learning how Lisp and Scheme internals work!

It's a single C source file which you can run like this:

    gcc sl3.c && ((cat corelib.lisp; cat /dev/stdin) | ./a.out )

This will compile the interpreter, 
load the corelib and get you ready 
with a "repl" where you can experiment.
Once the interpreter is running, you could try

    (+ 1 1)
    (cdr '(1 2))
    (is-prime 103)
    (define X '(3 4 5))
    (print 'first element 'of 'list 'X 'is (cdr X))
