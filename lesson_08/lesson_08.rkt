#lang racket

(define (sum-of-square x y)
  (let ((x-square (* x x))
        (y-square (* y y)))
    (+ x-square y-square)))

(define result (sum-of-square 2 3))

(displayln result)
