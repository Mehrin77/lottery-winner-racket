#lang racket

(require rackunit)
(require "hw3pr4_lotto-winner.rkt")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Testing matches
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; provided tests
(check-equal? (matches '(cat 1)     '())       0)
(check-equal? (matches '(cat 1)     '(2 3 4))  0)
(check-equal? (matches '(cat 1)     '(1))      1)
(check-equal? (matches '(ace 2 3 4) '(3 42 2)) 2)
(check-equal? (matches '(ace 2 3 4) '(8 4 5))  1)

;student checks

(equal? (matches '(toffee 0)     '())  0)   
(equal? (matches '(coffee 100 400 0.5)     '(400 0.5 300 200)) 2)
(equal? (matches '(netflix -1 -3 -4 50)     '(-1)) 1 ) 
(equal? (matches '(chill 22 33 44) '(33 42 22)) 2 )
(equal? (matches '(kimaya 6 9 0) '(0 0 4)) 0) ;false chech



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Testing lotto-winner
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; student tests


; provided tests
(check-equal? (lotto-winner
               '( (aanya 2 4 16 33 42)  
                  (bao 3 4 5 6 7) 
                  (cruz 3 15 16 41 42) ) 
               '(2 3 15 32 42)) ; winning tickets
              '(cruz 3)) ; <- output of lotto-winner

;student checks


(equal? (lotto-winner
               '( (devanshi 20 45 146 3300 42000000)  
                  (sara 0.3 0.4 0.5 0.7 0.4) 
                  (prionti 1 5 146 0.4 42) ) 
               '(0.4 42 555 198 146)) ;winnining ticket
               '(prionti 3))

(equal? (lotto-winner
               '( (ragini 0 0 160 7000000)  
                  (sharika 0.3 0.4 0.5 0.7 0.4) 
                  (rohan 1 5 146 0.4 42) ) 
               '(5555 555555 555555 555555 55555)) ;winnining ticket
               '())

