;Write a code to peroform arthimetic addition 
.model small
.stack 100h
.data
.code
main proc        
    
    mov ah, 1
    int 21h
    
    mov bl, al    ; bl =5
    
    mov ah, 1
    int 21h
    
    add bl, al     ; bl = 5+3 = 8
    
    mov cl ,bl       ; cl = 8
    
    sub cl, 48       
    
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
     
     mov dl, cl
    
    
    mov ah, 2
    int 21h

         
    
    mov ah, 4ch
    int 21h
    
    main endp
    end main