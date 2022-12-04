(define (f n)
  (cond ((< n 3) n)
	(else
	(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

(f 0); 0
(f 1); 1
(f 2); 2
(f 3); 4
(f 4); 11
(f 5); 25
(f 6)

(define (g n)
  (g-iter 0 1 2 n))

(define (g-iter a b c count)
  (if (= count 0)
      a
      (g-iter b c (+ (* 3 a) (* 2 b) c) (- count 1))))

(g 5); 25
