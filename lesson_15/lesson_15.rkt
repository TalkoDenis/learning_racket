#lang racket

(define (triple x)
    (list x x x))

(displayln (triple "a"))
(displayln (triple 7))