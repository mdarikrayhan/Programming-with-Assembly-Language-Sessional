;Print A to Z using loop with newline

.model small
.stack 100h

.data
letter db 'A' ; initialize letter to 'A'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 26 ; set loop counter to 26 (number of letters in the alphabet)
    
loop1:
    ; print current letter
    mov ah, 02h ; display character to screen
    mov dl, letter
    int 21h
    
    ; move to the next letter
    inc letter
    
    
    ; printing newline
    mov ah, 02h
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    loop loop1 ; repeat loop until all letters have been printed
    
    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main