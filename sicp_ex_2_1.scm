; Exercise 2.1
; Functions for representing and calculating rational numbers
; 7.8.2021

(define (make-rat n d)
  (cons n d)
)

(define (make-rat-v2 n d)
  (cond ((and (< n 0) (< d 0)) (cons (* -1 n) (* -1 d)))
        ((and (< n 0) (> d 0)) (cons n d)) 
        ((and (> n 0) (< d 0)) (cons (* -1 n) (* -1 d)))
        (else (cons n d))
   )
)

(define (numer rat)
  (car rat)
)

(define (denom rat)
  (cdr rat)
)

(define (print-rat rat)
  (newline)
  (display (numer rat))
  (display "/")
  (display (denom rat))
)

(define (add-rat rat1 rat2)
  (make-rat (+ (* (numer rat1) (denom rat2)) (* (numer rat2) (denom rat1)))   
            (* (denom rat1) (denom rat2))
   )
)

(define (sub-rat rat1 rat2)
  (make-rat (- (* (numer rat1) (denom rat2)) (* (numer rat2) (denom rat1)))   
            (* (denom rat1) (denom rat2))
   )
)

(make-rat 1 4)

(add-rat (make-rat 1 5) (make-rat 2 5))

(print-rat (make-rat 2 7))

(print-rat (make-rat-v2 2 7))

(denom (make-rat 1 4))

(define x (cons 1 2))

(car x)
