(DEFINE FACT
   (LAMBDA (N)
       (LABELS ((FACT1 (LAMBDA (M ANS)
                           (IF (= M 0) ANS
                                   (FACT1 (- M 1)
                                          (* M ANS))))))
                (FACT1 N))))