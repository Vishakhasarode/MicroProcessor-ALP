DATA SEGMENT 
        X DW 4524H
        Y DW 2056H
       RESULT DW 0
DATA ENDS 
    CODE SEGMENT
         ASSUME  CS:CODE,DS:DATA
         START:
         MOV DX, DATA
         MOV DS,DX
         
         MOV AX,X 
         MUL Y
         MOV RESULT,AX
         MOV RESULT+2,DX
        
        
    MOV AH,4CH 
    INT 21H
    CODE ENDS
END START