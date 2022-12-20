(define (firstk lst k)
    (if (= k 0)
        nil
        (cons (car lst) (firstk (cdr lst) (- k 1))))
)

(define (lastk lst k)
    (if (= k (length lst))
        lst
        (lastk (cdr lst) k))
)

(define (split-at lst n)
    (if (> n (length lst)) 
        (cons lst nil)
        (append (list (firstk lst n)) (lastk lst (- (length lst) n)))
    )
)

(define (compose-all funcs)
    (if
        (null? funcs)
        (lambda (x) x)
        (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x))))
    )
