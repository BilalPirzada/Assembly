;Write to display from a to z skip one char on user choice
.model small
.stack 100h
.data
.code
main proc   
    
    
    mov ah, 01
    int 21h 
    
    mov bl, al
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
    
   mov dl, 'a'
 
  mov cx, 26
   L1: 
   
   
    cmp dl, bl
    je L2
   
    mov ah, 2
    int 21h 
    
    L2:
    add dl, 1
    
    Loop L1
         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main