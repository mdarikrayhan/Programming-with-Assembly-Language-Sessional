;Print 0 to 9 using loop

.model small
.stack 100h

.data
    count db 0  ; initialize count variable to 0

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10  ; set loop counter to 10 (for 0 to 9)
    
loop_start:
    mov dl, count  ; move count value to dl register
    add dl, '0'  ; convert binary to ASCII digit
    mov ah, 02h  ; display character to screen
    int 21h
    
    inc count  ; increment count variable
    loop loop_start  ; repeat loop until cx = 0
    
    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main