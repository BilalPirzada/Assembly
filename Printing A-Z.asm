;Printing A-Z
.model small
.stack 100h
.data
.code
main proc        
    
   mov dl, 'A'
   
  mov cx, 26
   L1:
   
    mov ah, 2
    int 21h
    
    add dl, 1
    
    Loop L1
         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main