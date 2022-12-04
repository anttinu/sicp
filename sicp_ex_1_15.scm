                                        ; 14:36 => 15:01


(define (cube x)
  (* x x x))

(define (p x)
  (display "+1" (current-output-port))
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 1.55)

; answer to question (a): function p is called five times - just be reading the REPL with display

; answer to question (b): growth in space and number of steps
(sine 0.05); 0
(sine 0.15); 1
(sine 0.25); 1
(sine 0.35); 2
(sine 0.45); 2
(sine 0.55); 2
(sine 0.65); 2
(sine 1.55); 3
(sine 2.55); 3
(sine 5.55); 4
(sine 7.55); 4
(sine 9.55); 5
(sine 12.55); 5
(sine 15.55); 5
(sine 20.55); 5
(sine 30.55); 6
(sine 40.55); 6
(sine 60.55); 6
(sine 100.55); 7
(sine 1000); 9
(sine 10000); 11

; => when input grows by factor of ten, number of steps seems to grow by factor of ̃2
                                        ; => logarithmic growth of steps

; mathematical answer (found online): since angle a is divided by 3 each time procedure p is applied, p is applied once for each complete power of 3 contained within the angle a, ceiling is base 3 logarithm divided by 0.1

