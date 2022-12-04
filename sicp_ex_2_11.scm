; Exercise 2.11

; Nov 21, 2022

; There are 9 different combinations of negative (N) and positive (P) end-points for x and y
; For example:
; 1: X_lower = N, X_upper = N, Y_lower = N, Y_upper = N
; 2: X_lower = N, X_upper = N, Y_lower = N, Y_upper = Y
; etc...


(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (mul-internal-ben x y)
  (cond
   ((and (< (lower-bound x) 0) (< (upper-bound x) 0) (< (lower-bound y) 0) (< (upper-bound y) 0)) 
    (make-interval (* (upper-bound x) (upper-bound y)) (* (lower-bound x) (lower-bound y))))
   ((and (< (lower-bound x) 0) (> (upper-bound x) 0) (< (lower-bound y) 0) (< (upper-bound y) 0))
    (make-interval (* (upper-bound x) (lower-bound y)) (* (lower-bound x) (lower-bound y)))) 
   ((and (> (lower-bound x) 0) (> (upper-bound x) 0) (< (lower-bound y) 0) (< (upper-bound y) 0))
    (make-interval (* (upper-bound x) (lower-bound y)) (* (lower-bound x) (upper-bound y))))
   ((and (< (lower-bound x) 0) (< (upper-bound x) 0) (< (lower-bound y) 0) (> (upper-bound y) 0)) 
    (make-interval (* (lower-bound x) (upper-bound y)) (* (lower-bound x) (lower-bound y))))
   ((and (< (lower-bound x) 0) (> (upper-bound x) 0) (< (lower-bound y) 0) (> (upper-bound y) 0)) 
    (make-interval (* (upper-bound x) (lower-bound y)) (* (lower-bound x) (lower-bound y))))
   ((and (> (lower-bound x) 0) (> (upper-bound x) 0) (< (lower-bound y) 0) (> (upper-bound y) 0)) 
    (make-interval (* (upper-bound x) (lower-bound y)) (* (upper-bound x) (upper-bound y))))
   ((and (< (lower-bound x) 0) (< (upper-bound x) 0) (> (lower-bound y) 0) (> (upper-bound y) 0)) 
    (make-interval (* (lower-bound x) (upper-bound y)) (* (upper-bound x) (lower-bound y))))
   ((and (< (lower-bound x) 0) (> (upper-bound x) 0) (> (lower-bound y) 0) (> (upper-bound y) 0)) 
    (make-interval (* (lower-bound x) (upper-bound y)) (* (upper-bound x) (upper-bound y))))
   ((and (> (lower-bound x) 0) (> (upper-bound x) 0) (> (lower-bound y) 0) (> (upper-bound y) 0)) 
    (make-interval (* (lower-bound x) (lower-bound y)) (* (upper-bound x) (upper-bound y))))
   (else
    (error "Muu virhe"))))


(define intvl_1 (make-interval -10 5))
(define intvl_2 (make-interval 1 4))


(mul-internal-ben intvl_1 intvl_2)

(define (make-interval a b)
  (cons a b))

(define (upper-bound x)
  (max (car x) (cdr x)))

(define (lower-bound x)
  (min (car x) (cdr x)))


(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))
(define (center i)
 (/ (+ (lower-bound i) (upper-bound i)) 2))
(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))


