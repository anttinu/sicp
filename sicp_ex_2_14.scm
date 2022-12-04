; Exercise 2.14

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

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1))) 
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (div-interval x y)
  (mul-interval x 
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define intvl_A (make-center-percent 3 0.005) )
(define intvl_B (make-center-percent 3 0.005) )


;; DIFFERENT RESULTS, EVEN THOUGH SHOULD BE THE SAME!
(par1 intvl_A intvl_B) ;; (1.477649 , 1.52265075
(par2 intvl_A intvl_B) ;; (1.4925 , 1.5075)



