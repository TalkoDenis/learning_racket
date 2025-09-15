#lang racket

(displayln "Bond, James\nCode name: \"007\"")

(displayln "---")

(define l #\l)
(string #\H #\e l l #\o #\!) ; "Hello"
(string)                     ; ""


(displayln "---")

(make-string 10 #\.) ; ".........."

(displayln "---")

(string-length (string))             ; 0
(string-length (make-string 10 #\!)) ; 10

(displayln "---")

(string->list "ab") ; '(#\a #\b)
(list->string null) ; ""
(list->string (rest (string->list "Hello"))) ; "ello"

(displayln "---")

(define (next-char c) (integer->char (add1 (char->integer c))))

(define (next-chars s)
  (list->string (map next-char (string->list s))))

(displayln "---")

(next-chars "")      ; ""
(next-chars "abc")   ; "bcd"
(next-chars "12345") ; "23456"