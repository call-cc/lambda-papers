(DEFINE CONS-CELL
    (LAMBDA (CONTENTS)
        (LABELS ((THE-CELL
                  (LAMBDA (MSG)
                      (IF (EQ MSG 'CONTENTS?) CONTENTS
                          (IF (EQ MSG 'CELL?) 'YES
                              (IF (EQ (CAR MSG) '<-)
                                  (BLOCK (ASET 'CONTENTS (CADR MSG))
                                         THE-CELL)
                                  (ERROR '|UNRECOGNIZED MESSAGE - CELL|
                                          MSG
                                       'WRNG-TYPE-ARG)))))))
               THE-CELL)))