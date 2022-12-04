; Exercise 2.10
; Nov 20, 2022


(define (div-interval x y)
  (mul-interval x 
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

(define (div-interval-better x y)
  (cond
   ((and (> (upper-bound x) 0) (< (lower-bound x) 0)) (error "Error: interval crosses zero")) 
   ((and (> (upper-bound y) 0) (< (lower-bound y) 0)) (error "Error: interval crosses zero"))
   (else 
    (mul-interval x 
                  (make-interval (/ 1.0 (upper-bound y))
                                 (/ 1.0 (lower-bound y)))))))

(test-and intvl_1 intvl_2)
(div-interval intvl_1 intvl_2)

(define (make-interval a b) (cons a b))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define intvl_1 (make-interval 3 7))
(define intvl_2 (make-interval -1 6))

(div-interval intvl_1 intvl_2)

(define (upper-bound x)
  (max (car x) (cdr x)))

(define (lower-bound x)
  (min (car x) (cdr x)))
