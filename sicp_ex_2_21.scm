; Exercise 2.21
; Nov 29, 2022



(define (square-list-1 items)
  (if (null? items)
      '()
      (cons (* (car items) (car items)) (square-list-1 (cdr items)))))

(define (square-list-2 items)
  (map (lambda (x) (* x x)) items))

(square-list-1 (list 3 5 7 9 0))

(square-list-2 (list 3 5 7 90 0))
