;Exercise 2.19

; Nov 27, 2022

(define us-coins (list 50 25 10 5 1))
(define us-coins2 (list 1 5 10 25 50))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
(define eur-coins (list 2 1 0.5 0.2 0.1))

(first-denomination us-coins)
(except-first-denomination us-coins)

(cc 30 eur-coins)

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))

(define (first-denomination coinlist)
  (car coinlist)
  )

(define (except-first-denomination coinlist)
  (cdr coinlist)
)

(define (no-more? coinlist)
  (if (null? coinlist)
      #t
      #f)
  )

(no-more? (list))
