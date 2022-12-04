When the "new-if" procedure is used to calculate square roots, what happens is an infinite loop. This is because all parameters are being evaluated when the new-if procedure is called. And since one of the parameters is a recursive call, this causes the infinite loop.

In the case of "if", the above does not happen, because only one of the parameters is being evaluated.
