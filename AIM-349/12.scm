(DEFINE REV
    (LAMBDA (L)
        (LABELS ((DOLOOP (LAMBDA (L1 ANS)
                             (IF (NULL L1) ANS
                                 (DOLOOP (CDR L1)
                                         (CONS (CAR L1) ANS))))))
                (DOLOOP L NIL))))