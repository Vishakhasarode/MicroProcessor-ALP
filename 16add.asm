DATA SEGMENT 
        X DW 347CH
        Y DW 20ABH
        SUM DW ?
        CAR DB 0
DATA ENDS 
    CODE SEGMENT
         ASSUME  CS:CODE,DS:DATA
         START:
         MOV DX, DATA
         MOV DS,DX
         
         MOV AX,X
         ADD AX,Y
         MOV SUM ,AX
         JNC NEXT 
         INC CAR
        NEXT:
    MOV AH,4CH 
    INT 21H
    CODE ENDS
END START