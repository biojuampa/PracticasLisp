#!/usr/bin/clisp

; Clásica práctica de recursividad
; con la "función factorial".

(defun factorial (n)
    (if (eq n 0)
        1
        (* n (factorial (- n 1)))
    )
)

(set 'result (factorial 5))
(print result)
