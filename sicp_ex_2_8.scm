; Exercise 2.8
; Nov 20, 2022

; subtraction of two intervals...
; to create minimum value for interval, need to first identify larger R, then take the lower-bound of that, and deduct upper-bound of smaller R
; to create maximum value for interval, deduct lower-bound of smaller interval from upper-bound of larger interval
(define (sub-interval x y)
  (make-interval (- (max (lower-bound x) (lower-bound y)) (min (upper-bound x) (upper-bound y)))
                 (- (max (upper-bound x) (upper-bound y)) (min (lower-bound x) (lower-bound y)))))

(define (make-interval a b)
  (cons a b))

(define (upper-bound x)
  (max (car x) (cdr x)))

(define (lower-bound x)
  (min (car x) (cdr x)))

(define intvl_1 (make-interval 1.985 2.015))
(define intvl_2 (make-interval 2.99 3.01))

(sub-interval intvl_1 intvl_2)

(max (lower-bound intvl_1) (lower-bound intvl_2))
(min (upper-bound intvl_1) (upper-bound intvl_2))

(- ((max (lower-bound intvl_1) (lower-bound intvl_2))) ((min (upper-bound intvl_1) (upper-bound intvl_2))))

(- (max (lower-bound intvl_1) (lower-bound intvl_2)) (min (upper-bound intvl_1) (upper-bound intvl_2)))
