(DEFUN REV (L)
       (DO ((L1 L (CDR L1))
            (ANS NIL (CONS (CAR L1) ANS)))
           ((NULL L1) ANS)))