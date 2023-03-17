;Convert lower case letter to uppercase

.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC  
    
    MOV AH,1     ;INPUT
    INT 21H      ;LOWERTO UPPER CASE
    MOV BL,AL
    
    SUB BL,20H   ;CONVERT
    
    ; printing newline
    mov ah, 02h
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    MOV AH,2     ;OUTPUT
    MOV DL,BL
    INT 21H

    mov ah, 4ch  ; terminate program
    int 21h
    main endp
end main
