; Exercise 2.3
; Functions and data structure for representing rectangles on a plane
; started 28.12.2021
; finalised 28.12.2021

; a different representation of a rectangle won't matter, since the only thing that 'area' and 'perimeter' need is bottom-left-corner and top-right-corner. Therefore, no need to change those functions even though there would be a difference representation of rectangle.

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
)

(define own-rectangle (make-rectangle corner1 corner2))

(bottom-left-corner own-rectangle)
(top-right-corner own-rectangle)

(define corner1 (make-point -4 2))

(define corner2 (make-point -1 0))

(perimeter own-rectangle)
(area own-rectangle)

(define (perimeter rectangle)
  (+ 
   (*  
    (- (x-point (top-right-corner rectangle)) 
       (x-point (bottom-left-corner rectangle))) 
    2)
   (*  
    (- (y-point (top-right-corner rectangle)) 
       (y-point (bottom-left-corner rectangle))) 
    2))
)

(define (area rectangle)
  (*  
     (- (x-point (top-right-corner rectangle)) 
        (x-point (bottom-left-corner rectangle)))
     (- (y-point (top-right-corner rectangle)) 
        (y-point (bottom-left-corner rectangle))))
)

(define (make-rectangle corner-point-1 corner-point-2)
  (cons corner-point-1 corner-point-2)
)

(define (bottom-left-corner rectangle)
  (cond ( 
         (and (> (x-point (car rectangle)) (x-point (cdr rectangle)))
              (> (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (cdr rectangle)) (y-point (cdr rectangle)))
        )
        ( 
         (and (> (x-point (car rectangle)) (x-point (cdr rectangle)))
              (< (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (cdr rectangle)) (y-point (car rectangle)))
        )
        ( 
         (and (< (x-point (car rectangle)) (x-point (cdr rectangle)))
              (> (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (car rectangle)) (y-point (cdr rectangle)))
        )
        ( 
         (and (< (x-point (car rectangle)) (x-point (cdr rectangle)))
              (< (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (car rectangle)) (y-point (car rectangle)))
        )) 
)

(define (top-right-corner rectangle)
  (cond ( 
         (and (< (x-point (car rectangle)) (x-point (cdr rectangle)))
              (< (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (cdr rectangle)) (y-point (cdr rectangle)))
        )
        ( 
         (and (< (x-point (car rectangle)) (x-point (cdr rectangle)))
              (> (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (cdr rectangle)) (y-point (car rectangle)))
        )
        ( 
         (and (> (x-point (car rectangle)) (x-point (cdr rectangle)))
              (< (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (car rectangle)) (y-point (cdr rectangle)))
        )
        ( 
         (and (> (x-point (car rectangle)) (x-point (cdr rectangle)))
              (> (y-point (car rectangle)) (y-point (cdr rectangle)))
         )
         (make-point (x-point (car rectangle)) (y-point (car rectangle)))
        )) 
)

(define (make-point x y)
  (cons x y)
)

(define (x-point point)
  (car point)
)

(define (y-point point)
  (cdr point)
)


