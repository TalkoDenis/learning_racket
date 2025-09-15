#lang racket

(filter integer? (list 1 2.5 "foo" 7))

(define (increment-numbers data)
  (map add1 (filter number? data)))


(increment-numbers (list 10 'a 'b 12 'c 'd 3/5))