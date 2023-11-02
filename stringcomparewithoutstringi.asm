DATA SEGMENT 
       STR1 DB 'HELLO$'  
       STR2 DB 'world$'  
     MSG1 DB 10,13,'STRING ARE SAME$'
      MSG2 DB 10,13,'STRING ARE NOT SAME$'
       DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA    
START:
    MOV AX,DATA
    MOV DS,AX    
   
 
   LEA SI,STR1
   MOV CX,00
   UP1:
     CMP BYTE PTR[SI],'$'
     JE NEXT1
     INC CX
     INC SI
     JMP UP1     
     
    
     NEXT1:
     LEA SI,STR2
     MOV AX,00
     
    
     UP2:
    
     CMP BYTE PTR[SI],'$'
     JE NEXT2
     INC AX
     INC SI
     JMP UP2
     
     NEXT2:
     CMP CX,AX
     JNE NOTSAME
     LEA SI,STR1
     LEA DI, STR2
    
     UP3:
      MOV AL,[SI]   
      CMP AL,[DI] 
      JNE NOTSAME
      INC SI
      INC DI
       LOOP UP3
       
       LEA DX,MSG1
       MOV AH,09H
       INT 21H
       JMP
       EXIT:
       
      
       NOTSAME:
       LEA DX,MSG2
      MOV AH,09H
      INT 21H   
       
       
      
     
      MOV AH,4CH
      INT 21H
       CODE ENDS
      END START