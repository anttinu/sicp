(define (double a)
  (+ a a)

(define (halve a)
  (/ a 2))

(halve 8)

(double 9000000)

(define (even? a)
  (= (remainder a 2) 0))

(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-mult (double a) (halve b)))
        (else (+ a (fast-mult a (- b 1))))))

(fast-mult 8000 7000000)

(even? 8)
