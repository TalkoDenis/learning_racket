#lang racket

(define (next-char c) (integer->char (add1 (char->integer c))))
(define (prev-char c) (integer->char (sub1 (char->integer c))))