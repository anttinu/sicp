

; exercise 2.5

(define (cons a b) 
  (* (expt 2 a) (expt 3 b)))

(cons 0 0) ;1
(cons 1 0) ;2
(cons 0 1) ;3
(cons 2 0) ;4
(cons 1 1) ;6
(cons 1 2) ;18
(cons 2 1) ;12
(cons 2 2) ;36
(cons 0 2) ;9
(cons 1 5) ;486
(cons 0 3) ; 27
(cons 1 3) ;54


;exponents of 2
(define (car a)
  (2-iter a 1)
  )

;exponents of 3
(define (cdr b)
  (3-iter b 1))

(car 485)
(cdr 485)

; we want to know how many times argument b can be divided by 3 
(define (3-iter b counter)
  (if (> (remainder b (expt 3 counter)) 0)
      (- counter 1) 
      (3-iter b (+ counter 1))
      ))

; we want to know how many times argument b can be divided by 3 
(define (2-iter b counter)
  (if (> (remainder b (expt 2 counter)) 0)
      (- counter 1) 
      (2-iter b (+ counter 1))
      ))

