; exercise 2.7
; Nov 17, 2022


(define (make-interval a b) 
  (cons a b))

(define (upper-bound x)
  (max (car x) (cdr x)))

(define (lower-bound x)
  (min (car x) (cdr x)))

(define i (make-interval 13 7))

(upper-bound i)

(lower-bound i)
