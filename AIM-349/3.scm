(DEFINE SQRT
    (LAMBDA (X EPSILON)
        ((LAMBDA (ANS LOOPTAG)
             (CATCH RETURNTAG
                    (PROGN
                     (ASET 'LOOPTAG (CATCH M M))        ;CREATE PROG TAG
                     (IF (< (ABS (-$ (*$ ANS ANS) X)) EPSILON)
                         (RETURNTAG ANS)                ;RETURN
                         NIL)                           ;JFCL
                     (ASET 'ANS (//$ (+$ (//$ X ANS) ANS) 2.0))
                     (LOOPTAG LOOPTAG))))               ;GOTO
         1.0
         NIL)))