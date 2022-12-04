; Exercise 2.12

;

(define (make-center-percent center tolerance-%)
  (make-interval (- center (* center tolerance-%)) (+ center (* center tolerance-%)))
)

(define (percent intvl)
  (/ (- (upper-bound intvl) (center intvl)) (center intvl)) 
)

(define (make-interval x y)
  (cons x y))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (upper-bound x)
  (max (car x) (cdr x)))

(define (lower-bound x)
  (min (car x) (cdr x)))


(define intvl (make-center-percent 3 0.02) )

(center intvl) 

(percent intvl)
