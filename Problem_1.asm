;input a integer and print it

.MODEL small
.STACK 100h
.data

.code
main proc
    ;taking input
    mov ah,1
    int 21h
    mov bl,al
    
    ;printing newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;printing the outout
    mov ah,2
    mov dl,bl
    int 21h
    

    mov ah,4ch
    int 21h
    main endp
end main