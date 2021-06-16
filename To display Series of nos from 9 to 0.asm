;To display Series of nos from 9 to 0
.model small
.stack 100h
.data
.code
main proc        
    
   mov dl, '9'
   
  mov cx, 10
   L1:
   
    mov ah, 2
    int 21h
    
    sub dl, 1
    
    Loop L1
         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main