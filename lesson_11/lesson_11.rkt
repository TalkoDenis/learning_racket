#lang racket

(when (positive? -5) (display "Hi!"))

(when (positive? 5) (display "Hi") (display " there"))

(unless (positive? -5) (display "Hi!"))

(unless (positive? 5) (display "Hi") (display " there"))

(define (say-boom text) (when (equal? text "go") "Boom!"))

(say-boom "hey")
(say-boom "go")