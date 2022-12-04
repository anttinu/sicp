
; Exercise 2.27
; Dec 2, 2022


(define (reverse-2 lst)
  (cond ((null? lst) '())
        (else 
         (append
          (reverse-2 (cdr lst))
          (list (car lst)))) 
        )
)

(define (deep-reverse-2 lst)
  (cond ((null? lst) '())
        ((pair? (car lst))
          (append 
           (deep-reverse-2 (cdr lst))
           (list (deep-reverse-2 (car lst)))))           
        (else
         (append 
          (deep-reverse-2 (cdr lst)) 
          (list (car lst))))))
  
 
(define tst-lst (list (list 1 2) (list 3 4)))
(car tst-lst)
(pair? (car tst-lst))

(define tst-lst-2 (list 3 5))

(tst-lst)
(append (cdr tst-lst) (list (car tst-lst)))

(reverse (list 45 56 67 78 89))
(reverse-2 (list 45 56 67 78 89))
(deep-reverse-2 (list 45 56 67 78 89))

(reverse tst-lst)
(deep-reverse-2 tst-lst)

(define (reverse list)
  (define (iter list result)
    (if (null? list)
        result
        (iter (cdr list) (cons (car list) result))))
  (iter list '())
)
