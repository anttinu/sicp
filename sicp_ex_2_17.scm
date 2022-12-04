;Exercise 2.17

;takes a list as an argument, and returns the last item back, inside a list
(define (last-pair list)
  (if (null? (cdr list))
      list
      (last-pair (cdr list))))

(define test-list (list 2 4 6 8 10))

(last-pair test-list)

(cdr test-list)
