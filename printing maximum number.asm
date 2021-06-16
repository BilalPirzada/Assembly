;Write a program to read two numbers and display maximum number
.model small
.stack 100h
.data
.code
main proc  
    
 
    Mov ah, 1
    int 21h
    
    mov bl, al
    
    mov ah,1
    int 21h
    
    mov cl, al
    
    mov ah,2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
      
    
    cmp cl, bl
    jl L2        
    
    L1:
   mov ah, 2
   mov dl, bl
   int 21h
   cmp cl, bl
   jg exit
   
   
   L2:
      mov ah, 2
   mov dl, bl
   int 21h
   
   exit:          
    mov ah, 4ch
    int 21h
    
    main endp
    end main