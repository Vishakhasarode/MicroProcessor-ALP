 DATA SEGMENT 
        X DB 04H
        Y DB 23H
        SUM DB ?
        CAR DB 0
DATA ENDS 
    CODE SEGMENT
         ASSUME  CS:CODE,DS:DATA
         START:
         MOV AX, DATA
         MOV DS,AX
         MOV AL,Y
         ADD AL,Y
         MOV SUM ,AL
         JNC NEXT 
         INC CAR
        NEXT:
    MOV AH,4CH 
    INT 21H
    CODE ENDS
END START