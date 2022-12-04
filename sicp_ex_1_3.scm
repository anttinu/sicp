(define (square a)
  (* a a))

(define (sum-squares-of-two-larger a b c)
  (cond ((and (> a b) (> b c)) (+ (square a) (square b)))
	((and (> a b) (< b c)) (+ (square a) (square c)))
	(else (+ (square b) (square c)))))

(sum-squares-of-two-larger 2 3 9)
 
  
