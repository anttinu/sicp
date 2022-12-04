
(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (display " A: (" (current-output-port))
  (display amount (current-output-port))
  (display "," (current-output-port))
  (display kinds-of-coins (current-output-port))
  (display ")" (current-output-port))
  (newline (current-output-port))
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(count-change 11) ;4
The calls can be seen below (amount, kinds-of-coins).
The values that lead to +1 are the ones with (0, 1) i.e. amount = 0

 A: (11,5)
 A: (-39,5)
 A: (11,4)
 A: (-14,4)
 A: (11,3)
 A: (1,3)
 A: (-9,3)
 A: (1,2)
 A: (-4,2)
 A: (1,1)
 A: (0,1)
 A: (1,0)
 A: (11,2)
 A: (6,2)
 A: (1,2)
 A: (-4,2)
 A: (1,1)
 A: (0,1)
 A: (1,0)
 A: (6,1)
 A: (5,1)
 A: (4,1)
 A: (3,1)
 A: (2,1)
 A: (1,1)
 A: (0,1)
 A: (1,0)
 A: (2,0)
 A: (3,0)
 A: (4,0)
 A: (5,0)
 A: (6,0)
 A: (11,1)
 A: (10,1)
 A: (9,1)
 A: (8,1)
 A: (7,1)
 A: (6,1)
 A: (5,1)
 A: (4,1)
 A: (3,1)
 A: (2,1)
 A: (1,1)
 A: (0,1)
 A: (1,0)
 A: (2,0)
 A: (3,0)
 A: (4,0)
 A: (5,0)
 A: (6,0)
 A: (7,0)
 A: (8,0)
 A: (9,0)
 A: (10,0)
 A: (11,0)

Drawing of the tree on a paper...

Orders of growth of space and number of steps?

Space: the number of layers in the tree depends on the number of alternative coins (5). The space required grows
linearly with the amount. So space grows linearly O(n).

Number of steps: The number of steps increase with the size of "amount" to be considered. Whenever we cross the
threshold of next coin that is available (1, 5, 10, 25, 50), a new whole tree gets drawn up. Steps grow exponentiallycompared to amount a. With two coins a^2, with three coins a^3, with four coins a^4, with five coins a^5



