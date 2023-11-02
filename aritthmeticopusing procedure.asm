DATA SEGMENT
    X DB 45H
    Y DB 2BH
    SUM DB 2DUP(0)
    DIFF DB 2DUP(0)
    MRES DW 0
    QUO DB 0
    REM DB 0
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    MOV AX,DATA
    MOV DX,AX
    
    CALL ADDITION
    CALL SUBTRACTION
    CALL MULTIPLICATION
    CALL DIVISION
    
    MOV AH,4CH
    INT 21H
    
    ADDITION PROC
        MOV AL,X
        ADD AL,Y
        MOV SUM,AL
        JNC NEXT1
        INC SUM+1
         NEXT1:
         RET 
     ADDITION ENDP    
         
         SUBTRACTION PROC 
            MOV AL,X
            SUB AL,Y
            MOV DIFF,AL
            JNC NEXT2
            INC DIFF+1
            NEXT2:
            RET
            SUBTRACTION ENDP
                                      
       MULTIPLICATION PROC 
            MOV AL,X
            MUL Y
            MOV MRES,AX
             MULTIPLICATION ENDP
      
      
       DIVISION PROC  
        MOV AL,X
        MOV AH,00
        DIV Y
        MOV QUO,AL
        MOV REM,AH
        RET
        DIVISION ENDP
        
        
        CODE ENDS
       END START
       
                                       
                                      
                                      
         