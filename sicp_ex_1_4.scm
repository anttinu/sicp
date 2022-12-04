(define (a-plus-abs-b a b)
  ((if (> b  0) + -) a b))

(a-plus-abs-b -1 -3)

Description: if b > 0, then the plus operator is chosen, otherwise minus operator.
So if b > 0, a+b, otherwise a-b which becomes a--b, i.e. a+b

