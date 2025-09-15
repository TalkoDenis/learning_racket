#lang racket

(char<?   #\a #\b)     ; #t
(char>?   #\c #\b #\a) ; #t
(char=?   #\a #\b)     ; #f
(string<? "a" "b")     ; #t
(string>? "c" "b" "a") ; #t
(string=? "a" "b")     ; #f

(displayln "---")

(string=?    "Apple" "apple") ; #f
(string-ci=? "Apple" "apple") ; #t
(char>?      #\C     #\b)     ; #f
(char-ci>?   #\C     #\b)     ; #t

(displayln "---")

(char-alphabetic? #\a)    ; #t
(char-alphabetic? #\u3BB) ; #t — "λ" это буква, пусть и греческая
(char-lower-case? #\a)    ; #t
(char-lower-case? #\A)    ; #f

(displayln "---")

(andmap char-alphabetic? (string->list "asd"))  ; #t
(andmap char-alphabetic? (string->list "r2d2")) ; #f

(displayln "---")

(define (char-alphanumeric? c)
  (or (char-alphabetic? c)
      (char-numeric? c)))

(define (password-valid? password)
  (and
   (positive? (string-length password))
   (andmap char-alphanumeric? (string->list password))))

(define (password-good? password)
  (let ([chars (string->list password)])
    (and
     (password-valid? password)
     (<= 8 (length chars))
     (ormap char-alphabetic? chars)
     (ormap char-numeric? chars))))