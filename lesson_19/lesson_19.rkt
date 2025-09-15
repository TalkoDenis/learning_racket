#lang racket

(cons 1 2)
(pair? (cons 1 2))

(define p (cons "Bob" 42))

(car p)

(cdr p)


(define (lookup key pairs)
  (let* ([same-key? (lambda (kv) (equal? key (car kv)))]
         [found-pairs (filter same-key? pairs)])
    (if (empty? found-pairs) #f
        (first found-pairs))))

(define user-ages
  (list (cons "Tom" 31)
        (cons "Alice" 22)
        (cons "Bob" 42)))

(lookup "Bob" user-ages) ; '("Bob" . 42)
(lookup "Tom" user-ages) ; '("Tom" . 31)
(lookup "Moe" user-ages) ; #f