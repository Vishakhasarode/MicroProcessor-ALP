DATA SEGMENT 
        X DW 347CH
        Y DW 20ABH
        DIFF DW ?
        BURROW DB 0
DATA ENDS 
    CODE SEGMENT
         ASSUME  CS:CODE,DS:DATA
         START:
         MOV DX, DATA
         MOV DS,DX
         
         MOV AX,X
         SUB AX,Y
         MOV DIFF,AX
         JNC NEXT 
         INC BURROW
        NEXT:
    MOV AH,4CH 
    INT 21H
    CODE ENDS
END START