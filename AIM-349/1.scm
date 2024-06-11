(DEFINE COUNT
    (LAMBDA (L)
        (LABELS ((COUNTCAR
                  (LAMBDA (L)
                      (IF (ATOM L) 1
                          (+ (COUNTCAR (CAR L))
                             (COUNTCAR (CDR L))))))
                 (COUNTCDR
                  (LAMBDA (L)
                      (IF (ATOM L)
                          (IF (NULL L) 0 1)
                          (+ (COUNTCAR (CAR L))
                             (COUNTCDR (CDR L)))))))
           (COUNTCDR L))))             ; Note: COUNTCDR is defined here.