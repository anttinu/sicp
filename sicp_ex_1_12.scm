
; make all items start from left

;1
;11
;121
;1331

(define (element row column)
  (cond ((= row column) 1)
	((= row 1) 1)
	((= column 1) 1)
	((> column row) -1)
	(else (+ (element (- row 1) column) (element (- row 1) (- column 1))))))

(element 10 6)
	
	      
	    
