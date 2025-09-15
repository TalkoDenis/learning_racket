#lang racket

(foldr + 0 (list 1 2 3))
(foldl + 0 (list 1 2 3))

(displayln "******")

(define (f x acc)
    displayln x)

(foldr f (void)
    (list 1 2 3 4 5 6))

(displayln "******")

(foldl f (void)
    (list 1 2 3 4 5 6))

(displayln "******")

(define (func greeting name acc)
    (string-append acc greeting ", " name "!\n"))

(display
    (foldl func ""
        (list "Hello" "Hi" "Good Morning")
        (list "Bob" "Alice" "Tom")))

(displayln "******")

(define (max-delta xs ys)
    (foldl (lambda [x y m] (max m (abs (- x y))))
        0 xs ys))

(max-delta
    (list 10 -15 35)
    (list 2 -12 42))