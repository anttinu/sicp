; linear recursive process => O(n) steps, O(n) space
(define (expn base exponent)
  (if (= exponent 0)
      1
      (* base (expn base (- exponent 1)))))

(expn 5 5)

; linear iterative process (still recursive though...) => O(n) steps, O(1) space
(define (expn-lin base exponent)
  (expn-iter base counter 1))

(define (expn-iter base counter product)
  (if (= counter 0) product
      (expn-iter base (- counter 1) (* base product))))

(expn-lin 5 5)
  
; recursive successive squaring algorithm that can calculate exponents in O(log n) steps

(define (expn-ss base exponent)
  (cond ((= exponent 0) 1)
        ((even? exponent) (square (expn-ss base (/ exponent 2))))
        (else (* base (expn-ss base (- exponent 1))))))

(define (square n)
  (* n n))

(define (even? n)
  (= (remainder n 2) 0))

(even? 4)

(square 3)

(expn-ss 5 5)

; iterative successive squaring algorithm

(define (expn-ss-iter base exponent)
  (expn-ss-iter-iter base exponent 1))

(define (expn-ss-iter-iter base exponent a)
  (cond ((= exponent 0) a)
        ((even? exponent) (expn-ss-iter-iter (square base) (/ exponent 2) a))
        (else (expn-ss-iter-iter base (- exponent 1) (* base a)))))
         

(expn-ss-iter 3 7)

(* 81 27)
  


                           



  



