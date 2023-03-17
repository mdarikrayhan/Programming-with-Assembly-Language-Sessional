;Name input and output

.model small
.stack 100h

.data
    prompt db 'Enter your name: $'
    uname db 26, ?, 26 dup(0) ; buffer to hold name input
    output db 'Your name is: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h  ; display prompt
    lea dx, prompt
    int 21h

    mov ah, 0ah  ; read user input into buffer
    lea dx, uname
    int 21h
    
    mov ah, 09h  ; display output message
    lea dx, output
    int 21h
    
    mov ah, 09h  ; display name input
    lea dx, [uname+2]  ; offset past the input buffer header
    int 21h

    mov ah, 4ch  ; terminate program
    int 21h
    main endp
end main