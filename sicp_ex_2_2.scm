; Exercise 2.2
; Functions and data structure for representing lines on a plane
; started 7.8.2021
; finalised 28.12.2021

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
)

(define own-line (make-segment own-start-point own-end-point))

(define own-start-point (make-point 0 1))

(define own-end-point (make-point 3 3))

(print-point (mid-point own-line))

(define (make-segment start-point end-point)
  (cons start-point end-point)
)

(define (start-segment segment)
  (car segment)
)

(define (end-segment segment)
  (cdr segment)
)

(define (make-point x y)
  (cons x y)
)

(define (x-point point)
  (car point)
)

(define (y-point point)
  (cdr point)
)

(define (mid-point segment)
  (make-point
   (/ (+ (x-point (start-segment segment)) 
         (x-point (end-segment segment))) 
      2)
   (/ (+ (y-point (end-segment segment)) 
         (y-point (start-segment segment))) 
      2) 
  )
)
