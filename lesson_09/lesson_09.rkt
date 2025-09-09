#lang racket

(define (gt? x y) (> x y))

(gt? 3 2)
(gt? 5 10)


(define (even? n) (= (remainder n 2) 0))

(even? 3)
(even? 4)

(displayln "___")

(define (same-parity? x y) (and (even? x) (even? y)))

(same-parity? 3 7)
(same-parity? 4 8)
(same-parity? 4 7)
(same-parity? 3 10)

(displayln "___")

(define (same-parity_v2? x y) (equal? (even? x) (even? y)))

(same-parity_v2? 3 7)
(same-parity_v2? 4 8)
(same-parity_v2? 4 7)
(same-parity_v2? 3 10)
