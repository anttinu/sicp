; Exercise 2.29
; Dec 6, 2022 -- Independence Day!!

(define br1 (make-branch 2 4))
(define br2 (make-branch 1 8))
(define br1_1 (make-branch 4 6))
(define br1_2 (make-branch 2 9))
(define br_turbo (make-branch 3 my-mobile))
(define my-mobile (make-mobile br1 br2))
(define my-mobile-turbo (make-mobile br_turbo br1_1))
(define my-left-branch (left-branch my-mobile-turbo))
(define my-right-branch (right-branch my-mobile))

(right-branch (left-branch my-left-branch)) 

(branch-length my-left-branch)
(branch-structure my-left-branch)

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile)
  )

(define (right-branch mobile)
  (car (cdr mobile))
  )

(define (branch-length branch)
  (car branch)
  )

(define (branch-structure branch)
  (car (cdr branch))
  )

(define (total-weight mobile)
  (+ 
   (cond ((null? mobile) 0)
         ((pair? (branch-structure (left-branch mobile)))
          (total-weight (branch-structure (left-branch mobile))))
         (else 
          (branch-structure (left-branch mobile)))
         )
   (cond ((null? mobile) 0)
        ((pair? (branch-structure (right-branch mobile)))
          (total-weight (branch-structure (right-branch mobile))))
        (else 
         (branch-structure (right-branch mobile)))
        )))


(my-mobile-turbo)
(right-branch my-mobile-turbo)
(left-branch my-mobile-turbo)
(branch-structure (left-branch my-mobile-turbo))
(left-branch (branch-structure (left-branch my-mobile-turbo))) 
(pair? (branch-structure (left-branch my-mobile-turbo)))
(left-branch (left-branch my-mobile-turbo))
(branch-structure (right-branch my-mobile-turbo)) 
(total-weight (branch-structure (left-branch my-mobile-turbo)))

(total-weight my-mobile-turbo)
(my-mobile)

(define (torque-left mobile)
  (cond ((pair? (branch-structure (left-branch mobile)))
         (* (total-weight (branch-structure (left-branch mobile))) (branch-length (left-branch mobile)))) 
        (else 
         (* (branch-structure (left-branch mobile)) (branch-length (left-branch mobile))) 
         ))
  )

(define (torque-right mobile)
  (cond ((pair? (branch-structure (right-branch mobile)))
         (* (total-weight (branch-structure (right-branch mobile))) (branch-length (right-branch mobile)))) 
        (else 
         (* (branch-structure (right-branch mobile)) (branch-length (right-branch mobile))) 
         ))
  )

(define (balanced?-3 mobile)
  (cond ((null? mobile) #t) 
        (else 
         (and (= (torque-left mobile) (torque-right mobile))
              (cond ((pair? (branch-structure (left-branch mobile)))
                     (balanced?-3 (branch-structure (left-branch mobile))))
                    (else #t))
              (cond ((pair? (branch-structure (right-branch mobile)))
                     (balanced?-3 (branch-structure (right-branch mobile))))
                    (else #t))))))

(my-mobile)
(torque-left my-mobile-turbo)
(torque-right my-mobile)
(pair? (branch-structure (left-branch my-mobile))) 
(balanced?-3 my-mobile-turbo)


