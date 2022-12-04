; Exercise 2.22
; Nov 29, 2022

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things) 
              (cons (square (car things))
                    answer))))
  (iter items '()))



(square-list-2 (list 4 5 68 98))

; why the return items are in opposite order?
; => because cdr is called first, and cons added to it. It turns the list around.

(define (square-list-2 items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items '()))

; why this does not work? 
; => cannot do (cons answer 'number'), since the first item of cons is a list, and latter one is not. This could be done the other way around. 
; => => what this would need is append (list, list)


