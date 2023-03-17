;Calculate average of 3 CT marks(5) and print Pass if its greater than 3 else print Fail

.model small
.stack 100h

.data
msg1 db 10,13, 'Enter CT1 mark: $'
msg2 db 10,13, 'Enter CT2 mark: $'
msg3 db 10,13, 'Enter CT3 mark: $'
passmsg db 10,13, 'PASS$'
failmsg db 10,13, 'FAIL$'
ct1 db ?
ct2 db ?
ct3 db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; take input for ct1
    mov ah, 09h
    lea dx, msg1
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov ct1, al
    
    ; take input for ct2
    mov ah, 09h
    lea dx, msg2
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov ct2, al
    
    ; take input for ct3
    mov ah, 09h
    lea dx, msg3
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov ct3, al
    
    ; calculate sum
    mov al, ct1
    add al, ct2
    add al, ct3
    
    ; check if sum is greater than or equal to 9
    cmp al, 9
    jge pass   ; jump to pass label if sum is greater than or equal to 9
    
    ; if sum is less than 9, display fail message
    mov ah, 09h
    lea dx, failmsg
    int 21h
    jmp exit_program
    
pass: ; if sum is greater than or equal to 9, display pass message
    mov ah, 09h
    lea dx, passmsg
    int 21h
    
exit_program:
    ; exit program
    mov ah, 4ch
    int 21h
main endp
end main
