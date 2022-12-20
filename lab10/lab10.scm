(define a '(1 2 3))

(define (split-at lst n)
  cond
  (((>= n (length lst)) cons (lst nil))
   ((= n 0) lst)
   (else (if (list? car lst)
             (cons (append (car lst) (list (car (cdr lst)))))))))
