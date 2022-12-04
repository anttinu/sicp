(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (abs a)
  (if (< a 0)
      (- a)
      a))

(define (improve guess x)
  (* 0.5 (+ guess (/ x guess))))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1 x))

; very small number - square root should be 0.002
(sqrt 0.000004)	; result of the calculation is 0.03129

; very large number - square root should be
(sqrt 25000000000); 158113 - this is correct

;better solution is to observe how much guess changes from one iteration to the next
(define (good-enough-improved-? guess prev-guess)
  (< (abs (- guess prev-guess)) 0.0000001))

(define (sqrt-iter-improved guess x prev-guess)
  (if (good-enough-improved-? guess prev-guess)
      guess
      (sqrt-iter-improved (improve guess x) x guess)))

(good-enough-improved-? 1.5 2 1.501)

(define (sqrt-improved x)
  (sqrt-iter-improved 1 x 0))

(sqrt-improved 2)

; very small number - square root should be 0.002
(sqrt-improved 0.000004)	; result of the calculation is 0.002
; this works better!



  
