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

(defun lista_numeros (il &optional (fl nil))
    (setq i (car il))
    (setq r (cdr il))
    (cond ((null il) fl)
          ((numberp i) (lista_numeros r (cons i fl)))
          (T (lista_numeros r fl))
    )
)

(print (lista_numeros '(a 10 b 20 c 30)))

