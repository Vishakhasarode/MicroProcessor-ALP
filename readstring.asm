DATA SEGMENT 
    MSG1 DB  'ENTER THE STRING$'
    MSG2 DB 10,13,'YOUR INPUT IS $'
    STRING DB 30 DUP('$')
    DATA ENDS
 CODE SEGMENT 
     ASSUME CS:CODE,DS:DATA
     START:
     MOV AX,DATA
     MOV DS,AX
     
     LEA DX,MSG1
     MOV AH,09
     INT 21H
     
     MOV STRING,30
     LEA DX, STRING 
     MOV AH,10
     INT 21H
     
     LEA DX,MSG2
     MOV AH,09
     INT 21H
     
     LEA DX,STRING
     ADD DX,02
     MOV AH,09
     INT 21H
    
    MOV AH,4CH
    CODE ENDS END START
 