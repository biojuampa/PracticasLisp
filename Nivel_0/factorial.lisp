#!/usr/bin/clisp

; Clásica práctica de recursividad
; con la "función factorial".

(defun factorial (n)
    (if (eq n 0)
        1
        (* n (factorial (- n 1)))
    )
)

(setq input *args*)
(if input
    (setq num (parse-integer (nth 0 input)))
    (setq num 5)
)

(setq result (factorial num))
(format t "  !~D = ~D" num result)

