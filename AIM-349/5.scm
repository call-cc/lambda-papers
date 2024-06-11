(DEFINE SEMGEN
    (LAMBDA (SEMVAL)
        (LIST (LAMBDA ()
                  (EVALUATE!UNINTERRUPTIBLY
                      (ASET' SEMVAL (+ SEMVAL 1))))
              (LABELS (P (LAMBDA ()
                             (EVALUATE!UNINTERRUPTIBLY
                                 (IF (PLUSP SEMVAL)
                                     (ASET' SEMVAL (- SEMVAL 1))
                                     (P)))))
                        P))))