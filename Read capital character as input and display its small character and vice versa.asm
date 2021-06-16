 ;Read capital character as input and display its small character and vice versa
.model small
.stack 100h
.data
.code
main proc        
    
  
  mov ah, 01
  int 21h
  
  mov bl, al
  sub bl, 32
  
  mov ah, 02
  mov dl, 0ah
  int 21h
  mov dl, 0dh
  int 21h
  
  mov dl, bl
  mov ah, 02
  int 21h
         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main