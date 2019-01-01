;Scheme procedure that accepts two arguments: a natural number N and another Scheme procedure that generates a list of numbers and returns the sum of the first N members of the list.

#lang racket

(define (naddlist l)
 (
  cond
  (
   (null? (cdr l))
   (car l)
  )
  (else
   (+ (car l) (naddlist (cdr l)))
  )
 )
)

(define (getListnAdd1 N)
   (if (= N 0)
       '()
       (append (list N) (getListnAdd1 (sub1 N)))
   )
  )

(define (myfunc fx)
  (
  lambda(N) 
   (fx (getListnAdd1 N))
            
  )
)

;> (myfunc naddlist)
;#<procedure:...CI/RACKET/4a.rkt:24:2>
;> ((myfunc naddlist) 3)
;6
;> ((myfunc naddlist) 10)
;55
;> 

;(define (gen [count 6])
 ;   (if (= count 0)
  ;      '()
   ;     (cons (random 100) (gen (sub1 count)))))
;> (gen 5)
;'(66 32 87 39 35)
;> 