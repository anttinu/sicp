; Exercise 2.23

; Nov 29, 2023


(define (for-each proc lst)
  (cond ((not (null? lst))
         (proc (car lst))
         (for-each proc (cdr lst)))
        (else
         #f)
        ))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))

((lambda (x) (newline) (display x)) (car (list 57 321 88)) ) 

(null? '())
