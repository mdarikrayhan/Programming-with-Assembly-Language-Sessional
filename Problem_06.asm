;Sum of two numbers greater than 10

.model small
.stack 100h

.data
    num1 db 0
    num2 db 0
    result db 0
    carry db 0

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
    
    ; calculate sum
    mov al, num1
    add al, num2
    mov bl, 10
    cmp al, bl
    jb no_carry ; if the sum is less than 10, skip the carry operation
    sub al, bl ; subtract 10 from the sum
    mov carry, 1 ; set carry flag to 1
no_carry:
    mov result, al ; store the result in a variable
    
    ; printing newline
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    ;checking carry 
    cmp carry, 1 ; check if carry flag is set
    jne done ; if not, skip display of carry value
    mov dl, 49 ; ASCII code for '1'
    int 21h


done:
    ; display result
    add result, '0' ; convert binary to ASCII digit
    mov ah, 02h ; display character to screen
    mov dl, result
    int 21h  
    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main