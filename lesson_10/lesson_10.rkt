#lang racket

(if (> 3 2) (displayln "yes") (displayln "no"))

(define (sentence-type text) (if (equal? text (string-upcase text)) (displayln "cry") (displayln "common")))

(sentence-type "HELLO")
(sentence-type "Hello")