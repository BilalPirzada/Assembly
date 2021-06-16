.model small
.stack 100h
.code
A db ?
Main proc
          
    Mov cx, 4
    Outer:
          Mov al, 'a'
          Mov bx, cx
          Mov cx, 3
          Inner1:
              Mov ah, 02h
              mov dl, al
              int 21h
              inc al
          Loop Inner1
          
         
          
          Mov cx, 4
          Mov al, 'd'
          
          Inner2:   
              Mov ah, 02h
              Mov dl, al
              int 21h
              dec al
          Loop Inner2 
          
          Mov ah, 02h
          Mov dl, 0dh
          int 21h
          Mov dl, 0ah
          int 21h
          
          Mov cx, bx
          
          
    Loop Outer
    
    Mov ah, 4ch
    int 21h 
    
    Main endp
end main