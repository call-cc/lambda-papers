((LAMBDA (ME)
         (BLOCK (START!PROCESS (CREATE!PROCESS '(START!PROCESS ME)))
                (STOP!PROCESS ME)
                (P)))
 **PROCESS**)