#!/usr/bin/clisp

#| Programa: lista_numeros.lisp
   --------

    il --> Input List
    fl --> Final List

   Descripción: dada una lista il, se la recorre
   -----------  buscando los átomos numéricos, que
                posteriormente serán agregados a 
                la lista fl (por defecto nula), la
                cual será la salida del programa.
|#

; Usando la función «cond»
(defun lista_numeros_1 (il &optional (fl nil))
    (setq i (car il))
    (setq r (cdr il))

    (cond ((null il) fl)
          ((numberp i) (lista_numeros_1 r (cons i fl)))
          (T (lista_numeros_1 r fl))
    )
)

; Usando la función «if»
(defun lista_numeros_2 (il &optional (fl nil))
    (setq i (car il))
    (setq r (cdr il))
    
    (if (null il)
        fl
        (if (numberp i)
            (lista_numeros_2 r (cons i fl))
            (lista_numeros_2 r fl)
        )
    )
)

(print (lista_numeros_1 '(a 1 b 2 c 3)))
(print (lista_numeros_2 '(a 10 b 20 c 30)))

