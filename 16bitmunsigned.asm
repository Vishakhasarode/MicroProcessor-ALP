DATA SEGMENT 
        X DB 24H
        Y DB 56H
       RESULT DW 0
DATA ENDS 
    CODE SEGMENT
         ASSUME  CS:CODE,DS:DATA
         START:
         MOV DX, DATA
         MOV DS,DX
         
         MOV AL,X 
         MUL Y
         MOV RESULT,AX
         
        
        NEXT:
    MOV AH,4CH 
    INT 21H
    CODE ENDS
END START