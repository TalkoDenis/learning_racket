#lang racket

(cond 
    [(positive? -5) "first return"]
    [(zero? -5) "second return"]
    [(positive? 5) "third return"]
    [else "boom!"])


(define (programmer-level number)
  (cond
    [(< number 10) "junior"]
    [(< number 20) "middle"]
    [else "senior"]))

(displayln (programmer-level 0))
(displayln (programmer-level 10))
(displayln (programmer-level 30))
