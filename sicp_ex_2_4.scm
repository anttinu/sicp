; Nov 14, 2022
; had taken a while since the previous exercise...

Exercise 2.4

(define (cons x y)
  (lambda (m) (m x y)))

; returns the lambda function
; lambda function has two arguments p and q, and returns the first, p
(define (car z)
  (z (lambda (p q) p)))

;if then the second argument should be returned by cdr, therefore...
(define (cdr z)
  (z (lambda (p q) q)))


(car (cons 1 2))

;; using substitution model from 1.1.5:

(car (cons x y))
(car (lambda (m) (m x y)))
((lambda (m) (m x y)) (lambda (p q) p))
;substitute the lambda function that is an argument in place of m...
((lambda (p q) p) x y)
;the lambda function will return it is first argument..
x




