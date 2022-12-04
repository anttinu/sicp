; Exercise 2.6
Nov 16, 2022

; ended up reading up about lambda calculus rules then...
; http://bach.ai/lambda-calculus-for-absolute-dummies/


(+ 1 1)

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

; one is (add-1 zero):
((lambda (f) (lambda (x) (f ((zero f) x)))))

; zero is a function of one argument that returns that argument x. Therefore zero f x = x
(lambda (f) (lambda (x) (f x)))

(define one (lambda (f) (lambda (x) (f x))))

; two is (add-1 one)
(lambda (f) (lambda (x) (f ((one f ) x))))
(lambda (f) (lambda (x) (f ((lambda (a) (lambda (b) (a b) f) x)))))
; 'resolving' a lambda function (see the link):
(lambda (f) (lambda (x) (f ((lambda (a) ((a f) x))))))
; 'resolving' a lambda function again:
(lambda (f) (lambda (x) (f (xf))))

; did not complete sub-task to 'Give a direct definition of the addition procedure + (not in terms of repeated application of add-1)'
