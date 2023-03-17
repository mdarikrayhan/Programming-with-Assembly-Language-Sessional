;Sum of three numbers less than 10

.model small
.stack 100h

.data
    num1 db ?
    num2 db ?
    num3 db ?
    result db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; get first number input
    mov ah, 01h  ; read character from keyboard
    int 21h
    sub al, '0'  ; convert ASCII digit to binary
    mov num1, al
    
    ; get second number input
    mov ah, 01h  ; read character from keyboard
    int 21h
    sub al, '0'  ; convert ASCII digit to binary
    mov num2, al
    
    ; get third number input
    mov ah, 01h  ; read character from keyboard
    int 21h
    sub al, '0'  ; convert ASCII digit to binary
    mov num3, al
    
    ; calculate sum
    mov al, num1
    add al, num2
    add al, num3
    mov result, al
                    
    ;printing newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; display result
    add result, '0'  ; convert binary to ASCII digit
    mov ah, 02h  ; display character to screen
    mov dl, result
    int 21h
    
    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main