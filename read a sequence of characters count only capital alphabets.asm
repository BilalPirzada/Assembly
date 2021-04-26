.model small
.stack 100h
.data
 var db '0'
.code
main proc
         
    Mov ax, @data
    Mov ds, ax     
     
   
    
   Mov cx, 10
Loop1:
    Mov ah, 01
    int 21h
          
    Cmp al, 13
    je out        
          
    cmp al, 'A'
    jge L1
    jmp L3:    

	L1:
	cmp al, 'Z'
	jle L2
	jmp L3

	L2:
	inc var       
	       
	L3:
    
Loop Loop1

out: 

    mov ah, 02 
    mov dl, var
    int 21h     
                
    
    mov ah, 4ch
    int 21h         
            
    main endp 
    end main