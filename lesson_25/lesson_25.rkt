#lang racket

(printf "This is a list: ~v~n" '(1 2 3))
; => This is a list: '(1 2 3)
(printf "This is a string: ~v~n" "hello")
; => This is a string: "hello"
(printf "~a + ~a = ~a~n" 40 2 (+ 40 2))
; => 40 + 2 = 42
(printf "~v is \"~a\"~n" #\! #\!)
; => #\! is "!"
(printf "~v prints as \"~a\"~n" "abc" "abc")
; => "abc" prints as "abc"
(printf "~v prints as \"~a\"~n" '(42) '(42))
; => '(42) prints as "(42)"

(displayln "---")

(~a 1)                      ; "1"
(~a 1 2 3)                  ; "123"
(~a 1 "+" 3)                ; "1+3"
(~a 1 2 3 #:separator ", ") ; "1, 2, 3"

(displayln "---")

(~a 42 #:min-width 6)                 ; "42    "
(~a 42 #:min-width 6 #:align 'center) ; "  42  "
(~a 42 #:min-width 6 #:align 'right)  ; "    42"

(displayln "---")

(define (add x y)
  (let* ([result (~a (+ x y))]
         [width (string-length result)])
    (format
     "+~a~n ~a~n ~a~n ~a"
     (~a x #:min-width width #:align 'right)
     (~a y #:min-width width #:align 'right)
     (make-string width #\-)
     result)))

(displayln (add 1 2))
; => +1
; =>  2
; =>  -
; =>  3
(displayln (add 1 9))
; => + 1
; =>   9
; =>  --
; =>  10
(displayln (add 1223234 56))
; => +1223234
; =>       56
; =>  -------
; =>  1223290