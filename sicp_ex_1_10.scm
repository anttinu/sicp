(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1) (A x (- y 1))))))

(A 1 10); 1024

(A 2 4); 65536

(A 3 3); 65536

Mathematical definitions:
(define (f n) (A 0 n))

When x=0, the result is 2y. So here f(n) = 2n
(A 0 12); seems to work


(define (f n) (A 1 n))
A(1, n)
When x=1, we go to the "else" part:
A(0, A(1, n-1)) => here x=0 => this is 2y => i.e. 2*(A(1, n-1))
The next round:
A(1, n-1) => again "else" part:
A(0, A(1, n-2)) => here x=0 => this is 2y => i.e. 2*2*(A(1, n-2))
This ends when y reaches 1, then the value is 2 according to the algorithm
so for n=3, the outcome would be 2*2*2
and for n=4, the outcome would be 2*2*2*2
Therefore, the answer is 2^n.

Let's test:
(A 1 7); 128 => it works

(define (f n) (A 2 n))
A(2, n)
Now x=2, we go to "else" part:
A(1, A(2, n-1))

Looking into the "y" i.e.
A(2, n-1) becomes A(1, A(2, n-2)), etc

The y part will end when y reaches 1, then the value becomes 2. In that situation A(1,2) = 4

(A 2 0); 0
(A 2 1); 2
(A 2 2); 4
(A 2 3); 16
(A 2 4); 65536
(A 2 5); maximum recursion depth exceeded

The function is 2^2^2... n-1 times





