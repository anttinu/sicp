(define (good-enough-improved-? guess prev-guess)
  (< (abs (- guess prev-guess)) 0.0000001))

(define (cube-iter guess x prev-guess)
  (if (good-enough-improved-? guess prev-guess)
      guess
      (cube-iter (improve guess x) x guess)))

(good-enough-improved-? 1.5 2 1.501)

(define (cube-root x)
  (cube-iter 1 x 0))

(cube-root 5.0)

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(improve 1.26 2)




  
