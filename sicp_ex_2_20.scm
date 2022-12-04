; Exercise 2.20
; Nov 28, 2022



(define (same-parity . z)
  (cond ((even? (car z)) 
         (even-list z '()))
        (else
         (odd-list z '()))
         ))

(define (even-list lst result)
  (if (null? lst)
      result
      (if (even? (car lst))
          (even-list (cdr lst) (append result (list(car lst))))
          (even-list (cdr lst) result))))

(define (odd-list lst result)
  (if (null? lst)
      result
      (if (odd? (car lst))
          (odd-list (cdr lst) (append result (list(car lst))))
          (odd-list (cdr lst) result))))


(same-parity 423 46 16 17 19)

(odd-list (list 2 3 6) '())

(cons (list 2 3 4) (car (list 1 2 3)))

(same-parity 2 423 16 17 19)

(cdr (list 2 423 16 17))

(even? (car (list 2 423 26 17)))

(append '() (list 2 4 5))

(append '() 2)

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

