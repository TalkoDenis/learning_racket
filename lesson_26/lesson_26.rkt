#lang racket

(define (scroll-left! s)
  (let ([length (string-length s)])
    (unless (zero? length)
      (let ([head (substring s 0 1)])
        (string-copy! s 0 s 1 length)
        (string-copy! s (sub1 length) head)))))

(define s (string-copy "abc"))
(scroll-left! s)
s ; "bca"
(scroll-left! s)
s ; "cab"