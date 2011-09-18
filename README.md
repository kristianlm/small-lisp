
This very small (and limited) lisp interpreter is teaching me LISP, and allowing me to
discover how wonderfully simple LISP is.

It's a single .c file which you can run like this:

    # clone this project and cd into it
    gcc sl3.c && ((cat corelib.lisp; cat /dev/stdin) | ./a.out )
    # this will compile the interpreter, load the corelib and get you ready with a "repl" 
    # where you can experiment.
    
Once the interpreter is running, you could try

    (+ 1 1)
    (cdr '(1 2))
    (is-prime 103)
    (define X '(3 4 5))
    (print 'first element 'of 'list 'X 'is (cdr X))
