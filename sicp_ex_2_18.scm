; Nov 27, 2022

; Exercise 2.18


(reverse2 (list 3 4 7 11 65 56 79))

(define (reverse2 lst)
  (define (reverse2-iter return-list count length)
    (if (= count length)
        return-list
        (reverse2-iter (append (list ( list-ref lst count)) return-list) (+ count 1) length)))
  (let ((len (length lst)))
    (reverse2-iter '() 0 len)
    )
  )

(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (append-item list item)
  (cons list item)
)

; ...and then a more beautiful solution from internet...

(reverse (list 45 56 67 78 89))

(define (reverse list)
  (define (iter list result)
    (if (null? list)
        result
        (iter (cdr list) (cons (car list) result))))
  (iter list '())
)

(append-item (list 1 2 3) (list 56))

(cons (car (list 1 2 3 4)) '())


(append (list-ref (list 3 4 7 11 65 56) 3) '(65 56))

(cons 56 (cons 6 '()))

(car (list 2 4 6 78))

(cons '(56) (list-ref (list 3 4 7 11 65 56) 4)) 

(length (list 3 4 7 11 45))

(list-ref (list 3 4 7 11 45) 1)

(+ 1 9)
