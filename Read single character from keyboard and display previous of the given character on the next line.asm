;Read single character from keyboard and display previous of the given character on the next line 

.model small
.stack 100h
.data
.code
main proc
     
       
   
         
    mov ah, 01
    int 21h
    
   
                           
      mov bl,al
      sub bl,1
     
     mov ah, 02
     mov dl, 0ah
     int 21h
     
     mov dl, 0dh  
    int 21h
    
    mov ah, 02
    mov dl, bl
    int 21h
    
    mov ah, 4ch
    int 21h    
    
    
    main endp
    end main