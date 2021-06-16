;To display Series of even nos from 0 to 8
.model small
.stack 100h
.data
.code
main proc        
    
   mov dl, '0'
   
  mov cx, 5
   L1:
   
    mov ah, 2
    int 21h
    
    add dl, 2
    
    Loop L1
         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main