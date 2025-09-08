#lang racket

(define (sum-of-scuares x y) (+ x y) (+ (* x x) (* y y)))
(displayln (sum-of-scuares 2 3))