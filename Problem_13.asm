;Finding larger number between two numbers

.model small
.stack 100h
.data
num1 dw 0
num2 dw 0
message1 db 'Enter first number: $'
message2 db 'Enter second number: $'
message3 db 'The larger number is: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; display message to enter first number
    mov ah, 09h
    lea dx, message1
    int 21h
    
    ; read first number input
    mov ah, 01h
    int 21h
    sub al, '0' ; convert ASCII digit to binary
    mov num1, ax
    
    ; display message to enter second number
    mov ah, 09h
    lea dx, message2
    int 21h
    
    ; read second number input
    mov ah, 01h
    int 21h
    sub al, '0' ; convert ASCII digit to binary
    mov num2, ax
              
    ; display result
    mov ah, 09h
    lea dx, message3
    int 21h
    
    ; compare numbers
    mov ax, num1
    cmp ax, num2
    jge larger ; jump to larger if num1 is greater than or equal to num2
    mov ax, num2 ; otherwise, move num2 into ax (since it is larger)
larger:
    add ax, '0' ; convert binary to ASCII digit
    mov dx, ax
    mov ah, 02h
    int 21h
    
    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main