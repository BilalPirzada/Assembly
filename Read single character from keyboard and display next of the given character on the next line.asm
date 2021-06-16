;Read single character from keyboard and display next of the given character on the next line  

.model small
.stack 100h
.data
.code
main proc
         
    mov ah, 01
    int 21h 
                           
      mov dl,al
      add dl,1
     
     mov ah, 02  
    int 21h
    
    mov ah, 4ch
    int 21h    
    
    
    main endp
    end main