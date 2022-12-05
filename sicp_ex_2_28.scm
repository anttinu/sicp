; Exercise 2.28
; Dec 5, 2022


(define (fringe tree)
  (cond ((null? tree) '())
        ((not (pair? tree))
         (list tree))
        (else
         (append 
          (fringe (car tree)) 
          (fringe (cdr tree)))))
  )

(define x (list (list 1 2) (list 11 4 (list 5 6))))

(define (fringe-2 tree)
  (define (fringe-recur x result)
    (cond ((null? x) 
           result)
          ((not (pair? x))
           (cons x result))
          (else
           (fringe-recur (car x)
                         (fringe-recur (cdr x) result))))
    )
  (fringe-recur tree '())
  )

(fringe x)
(fringe-2 my-tree)

(define my-tree (list 1 (list 2 (list 3 4) (list 5 6)) (list 7 (list 8)))) 

(append '() )

(pair? x)

(pair? (car x))
(pair? (car (car x)))

(cdr (car x))

(append '(4 5) (list 1))
