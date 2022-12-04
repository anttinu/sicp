; Exercise 2.25
; Dec 1, 2022

(define list_1 '(1 3 (5 7) 9))
(car (cdr (car (cdr (cdr list_1))))) 

(define list_2 '((7)))
(car (car list_2))

(define list_3 '(1 (2 (3 (4 (5 (6 7)))))))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr list_3))))))))))))  


