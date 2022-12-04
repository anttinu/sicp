Applicative-order evaluation: the interpreter first evaluates the operator and operands and then applies the resulting procedure to the resulting argument

Normal-order evaluation: first substitute operand expressions for parameters until it obtained an expression involving only primitive operators, and would then perform the evaluation

What behavior is observed with applicative-order evaluation?
First need to evaluate test, 0, and (p). Apparently (p) goes to infinite loop, so will never finalise.

What behavior is observed with normal-order evaluation?
x is replaced with 0. Then test is performed whether 0==0. This is the case, so zero is returned. The test will finalise.

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))


























