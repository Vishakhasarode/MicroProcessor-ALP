DATA SEGMENT 
        X DB 24H
        Y DB 56H
        DIFF DB ?
        BURROW DB 0
DATA ENDS 
    CODE SEGMENT
         ASSUME  CS:CODE,DS:DATA
         START:
         MOV DX, DATA
         MOV DS,DX
         
         MOV AL,X
         SUB AL,Y
         MOV DIFF,AL
         JNC NEXT 
         INC BURROW
        NEXT:
    MOV AH,4CH 
    INT 21H
    CODE ENDS
END START