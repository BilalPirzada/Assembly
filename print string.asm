.model small
.stack 100h
.data
 var db 'one', '$'
.code
main proc
         
    Mov ax, @data
    Mov ds, ax     
     
  
  Mov ah, 01
  int 21h   
  
  cmp al, '1'
  je L1
  
  L1:   
      
         lea dx, var
         mov ah, 09 
         int 21h  
    
     mov dl, 0ah
     int 21h
    mov dl, 0dh 
    int 21h   
        
              
    
    mov ah, 4ch
    int 21h         
            
    main endp 
    end main