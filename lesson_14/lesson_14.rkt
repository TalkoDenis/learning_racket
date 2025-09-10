#lang racket

(define (classify x)
    (cond
        [(< x 0) "Negative"]
        [(case x
            [(13 42 100500) #t]
            [else #f]) "Special"]
        [else "Boring"]))

(displayln (classify -3))
(displayln (classify 42))
(displayln (classify 10))


(define (do-today x)
  (cond
    [(not (integer? x)) "???"]
    [(member x '(1 2 3 4 5)) "work"]
    [(member x '(6 7)) "rest"]
    [else "???"]))

(displayln (do-today -3))
(displayln (do-today 2))
(displayln (do-today 6))
(displayln (do-today 8))
(displayln (do-today 6.3))
(displayln (do-today "hi"))
