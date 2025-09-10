#lang racket

(map add1 (list 1 2 3))

(map +
    (list 1 2 3)
    (list 10 20 30)
    (list 100 200 300))

(define (maps fs args-lists)
  (map (lambda (f args) (map f args))
       fs
       args-lists))

(maps
 (list add1 string?)
 (list (list 10 20)
       (list "a" 0)))


; (define (maps fs as) (map map fs as))