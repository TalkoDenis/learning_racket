#lang racket

(string-ref "apple" 3) ; #\l

(displayln "---")

(substring "Apple" 2)   ; "ple"
(substring "Apple" 1 3) ; "pp"

(displayln "---")

(string-append "Hello, " "World!") ; "Hello, World!"
(string-append "foo")              ; "foo"
(string-append "b" "a" "r")        ; "bar"

(displayln "---")

(string-join (list "a" "b" "c")) ; "a b c" - разделитель, это пробел

(define (greet names)
 (string-join
  names ", "
  #:before-first "Hello, "
  #:before-last " and "
  #:after-last "!"))

(greet (list "Bob"))               ; "Hello, Bob!"
(greet (list "Bob" "Tom"))         ; "Hello, Bob and Tom!"
(greet (list "Bob" "Tom" "Alice")) ; "Hello, Bob, Tom and Alice!"

(displayln "---")

(define (scroll-left s)
  (if (zero? (string-length s)) s
      (string-append (substring s 1)
                     (substring s 0 1))))


(scroll-left "") ; ""
(scroll-left "a") ;"a"
(scroll-left "abc") ; "bca"
(scroll-left "*----") ; "----*"
(scroll-left (scroll-left "*----")) ; "---*-"