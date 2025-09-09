#lang racket

(let ((v 0))
  (case v
    [(0) "zero"]
    [(1) "one"]
    [else "other"]))

(define (humanize-permission text)
    (case text
        [("x") "execute"]
        [("r") "read"]
        [else "write"]))

(displayln (humanize-permission "x"))
(displayln (humanize-permission "r"))