;To display Series of nos from 0 to 9
.model small
.stack 100h
.data
.code
main proc        
    
   mov dl, '0'
   
  mov cx, 10
   L1:
   
    mov ah, 2
    int 21h
    
    add dl, 1
    
    Loop L1
         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main