#lang racket

(define (sum l)
  (if (empty? l)
    0 ;
    (let ([head (first l)]
          [tail (rest l)])
      (+ head
         (sum tail)))))

(displayln "---")

(define (foldr op init l)
  (if (empty? l)
    init
    (let ([head (first l)]
          [tail (rest l)])
      (op head
          (foldr op init tail)))))

(define (foldl op init l)
  (if (empty? l)
    init
    (let ([head (first l)]
          [tail (rest l)])
      (foldl op (op head init)
                tail))))

(displayln "---")

(define (skip n l)
  (if (or (<= n 0) (empty? l)) l
      (skip (sub1 n) (rest l))))


(skip -5 (list 1 2 3)) ; '(1 2 3)
(skip  0 (list 1 2 3)) ; '(1 2 3)
(skip  1 (list 1 2 3)) ; '(2 3)
(skip 10 (list 1 2 3)) ; '()