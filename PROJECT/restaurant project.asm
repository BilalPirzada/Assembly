.MODEL LARGE
.STACK 1000H
.DATA

  ; MAIN MENU------------------------
  M1 DB "----------WELCOME TO THE SIBA RESTAURANT----------",'$'
  
  M2 DB 10,13,10,13,'Enter your Choise $'

M3 DB 10,13,'  **                 1.Breakfast Menu         **$' 
M4 DB 10,13,'  **                 2.Lunch Menue             **$'
M5 DB 10,13,'  **                 3.Dinner Menue            **$'
M6 DB 10,13,'  **                 4.Snacks                  **$'
M7 DB 10,13,'  **                 5.DESSERT              **$'
M8 DB 10,13,'  **                 6.Drinks                  **$'  
       
       
       
ORDERMSG DB 10,13,10,13,'***Choise your food from the menu***$'
  
;BREAKFAST-----------------------------------------------------------------------  
M9 DB 10,13,'  **           1.Tanduri Roti            10/-                      **$' ;breakfast
M10 DB 10,13,'  **           2.Nan                     10/-                      **$'
M11 DB 10,13,'  **           3.Parata                  10/-                      **$'
M12 DB 10,13,'  **           4.Dal                     10/-                      **$'
M13 DB 10,13,'  **           5.Mixed Vegetables        20/-                      **$'
M14 DB 10,13,'  **           6.Halwa                   20/-                      **$'
M15 DB 10,13,'  **           7.Luchi                   10/-                      **$'
M16 DB 10,13,'  **           8.Fried Egg               20/-                      **$'
M17 DB 10,13,'  **           9.Goats Feet              60/-                      **$'        
;---------------------------------------------------------------------------------------       
    
    
    
;lunch---------------------------------------------------------------------- 
M18 DB 10,13,'  **  1.Kachchi Birani(Kabab+Egg)              90/-                **$' 
M19 DB 10,13,'  **  2.Chicken Birani(Kabab+Egg)              90/-                **$' 
M20 DB 10,13,'  **  3.Plain Polaw                            30/-                **$' 
M21 DB 10,13,'  **  4.Chicken Bhuna Khichuri(with Kabab+Egg) 90/-                **$'
M22 DB 10,13,'  **  5.Mutton Bhuna Khichuri(with Kabab+Egg)  90/-                **$'
M23 DB 10,13,'  **  6.Plain Rice                             10/-                **$'
M24 DB 10,13,'  **  7.Pabda Fish                             30/-                **$'
M25 DB 10,13,'  **  8.Lobstar Big/Small                      30/-                **$'
M26 DB 10,13,'  **  9.Koi Fish                               30/-                **$'
;------------------------------------------------------------------------------------ 

 
 
;DINNER------------------------------------------------------------------------------
M27 DB 10,13,'  **  1.Goats Brain             60/-                               **$'
M28 DB 10,13,'  **  2.Chicken Bhuna Khichuri  80/-                               **$'
M29 DB 10,13,'  **  3.Mutton Bhuna Khichuri   80/-                               **$' 
M30 DB 10,13,'  **  4.Chicken Liver/Kolija    40/-                               **$'
M31 DB 10,13,'  **  5.Goats Liver/Kolija      50/-                               **$'
M32 DB 10,13,'  **  6.Chicken Vuna            70/-                               **$'
M33 DB 10,13,'  **  7.Hilsha Fish             60/-                               **$'
M34 DB 10,13,'  **  8.Rui Fish                60/-                               **$'
M35 DB 10,13,'  **  9.Molay/Kaski Fish        60/-                               **$'

 
 
 
 
 
 
 
;snacks

M36 DB 10,13,'  **  1.Moghol Porata    8/-                  **$'
M37 DB 10,13,'  **  2.Shami/Jali Kabab 80/-                 **$'
M38 DB 10,13,'  **  3.Singara          5/-                  **$'
M39 DB 10,13,'  **  4.Chicken Samucha  5/-                  **$'



;DESSERTt
M40 DB 10,13,'  **  1.Faluda 50/-                           **$' 
M41 DB 10,13,'  **  2.Puding 50/-                           **$'
M42 DB 10,13,'  **  3.Firnni 50/-                           **$'
M43 DB 10,13,'  **  4.Curd   50/-                           **$'



;Drinks
M44 DB 10,13,'  **  1.Shoft Drinks 8/-                      **$'
M46 DB 10,13,'  **  2.Laschi       6/-                      **$'
M47 DB 10,13,'  **  3.Borhani      9/-                      **$'
M48 DB 10,13,'  **  4.Labang       9/-                      **$'
M49 DB 10,13,'  **  5.Coffee       7/-                      **$'
M50 DB 10,13,'  **  6.Tea          5/-                      **$'



;INVALID
M51 DB 10,13,10,13,'***&&INVALID ENTRY&&***$'
M52 DB 10,13,'      ***&&Try Again&&***$'


;ORDER DETAILS
M53 DB 10,13,10,13,'Enter your order: $'
M54 DB 10,13,'Quantity: $'
M55 DB 10,13,'Total Price: $'


DRINK DB ?
QUANTITY DB ?


M56 DB 10,13,10,13,'1.Go Back to Main Menu$'
M57 DB 10,13,'2.EXIT$'





    
  SEJ DB 10,13,10,13,' $'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    
    
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
            
    ;MAIN MENU--------------------------------
    
    MENU:
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    LEA DX,M5
    MOV AH,9
    INT 21H
  
    
    LEA DX,M6
    MOV AH,9
    INT 21H
       
    LEA DX,M7
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M8
    MOV AH,9
    INT 21H
    
     
    LEA DX,M2 ; ENTER YOUR CHOICE
    MOV AH,9
    INT 21H
     
    
    ;MENU ENDS-------------------------------------------------
    
    MOV AH, 01 ;INPUT
    INT 21H
    
    
    MOV DL, AL
    
    CMP DL,'1'
    JE BREAKFAST
    
    CMP DL,'2'
    JE LUNCH
    
    CMP DL,'3'
    JE DINNER
    
    CMP DL,'4'
    JE SNACKS
    
    CMP DL,'5'
    JE DESSERT
    
    CMP DL,'6'
    JE DRINKS
    
    JMP EXIT:
    
   
;BRAKFAST MENU------------BREAKFAST MENU---------------    
    
    BREAKFAST:    
    LEA DX,ORDERMSG
    MOV AH,9
    INT 21H
    
    LEA DX,M9
    MOV AH,9
    INT 21H
    
    LEA DX,M10
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9
    INT 21H
  
    
    LEA DX,M12
    MOV AH,9
    INT 21H
       
    LEA DX,M13
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M14
    MOV AH,9
    INT 21H 
    
    LEA DX,M15
    MOV AH,9
    INT 21H
    
    LEA DX,M16
    MOV AH,9
    INT 21H
    
    LEA DX,M17
    MOV AH,9
    INT 21H
    
     
    LEA DX,M53
    MOV AH,9
    INT 21H
    
    MOV AH, 01
    INT 21H
    
    MOV BL, AL
    
    
    LEA DX,M55 ;TOTAL PRICE MESSAGE
    MOV AH,9
    INT 21H
    
    CMP BL, '1'
    JE TEN
    
     CMP BL, '2'
    JE TEN
    
    CMP BL, '3'
    JE TEN
    
    CMP BL, '4'
    JE TEN
    
    CMP BL, '5'
    JE TWENTY
    
    CMP BL, '6'
    JE TWENTY
    
    CMP BL, '7'
    JE TEN
    
    CMP BL, '8'
    JE TWENTY
    
    CMP BL, '9'
    JE SIXTY
    
    JMP EXIT ; IF INCORRECT ENTRY
  
    
;BREAKFAST MENU ENDS HERE-------------------------------  
       
   
    
;LUNCH  ----------------------------------------    
 lUNCH:
    
     LEA DX,ORDERMSG
    MOV AH,9
    INT 21H
    
     LEA DX,M18
    MOV AH,9
    INT 21H
    
    LEA DX,M19
    MOV AH,9
    INT 21H
    
    LEA DX,M20
    MOV AH,9
    INT 21H
  
    
    LEA DX,M21
    MOV AH,9
    INT 21H
       
    LEA DX,M22
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M23
    MOV AH,9
    INT 21H 
    
    LEA DX,M24
    MOV AH,9
    INT 21H
    
    LEA DX,M25
    MOV AH,9
    INT 21H
    
    LEA DX,M26
    MOV AH,9
    INT 21H
    
     
      LEA DX,M53
    MOV AH,9
    INT 21H
    
    MOV AH, 01
    INT 21H
    
    MOV BL, AL
    
    
    LEA DX,M55 ;TOTAL PRICE MESSAGE
    MOV AH,9
    INT 21H
    
    CMP BL, '1'
    JE NINETY
    
     CMP BL, '2'
    JE NINETY
    
    CMP BL, '3'
    JE THIRTY
    
    CMP BL, '4'
    JE NINETY
    
    CMP BL, '5'
    JE NINETY
    
    CMP BL, '6'
    JE TEN
    
    CMP BL, '7'
    JE THIRTY
    
    CMP BL, '8'
    JE THIRTY
    
    CMP BL, '9'
    JE THIRTY
    
     JMP EXIT ; IF INCORRECT ENTRY
  
    
;LUNCH MENU ENDS HERE-------------------------------



;DINNER  ----------------------------------------    
 DINNER:
    
   LEA DX,ORDERMSG
    MOV AH,9
    INT 21H
    
     LEA DX,M27
    MOV AH,9
    INT 21H
    
    LEA DX,M28
    MOV AH,9
    INT 21H
    
    LEA DX,M29
    MOV AH,9
    INT 21H
  
    
    LEA DX,M30
    MOV AH,9
    INT 21H
       
    LEA DX,M31
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M32
    MOV AH,9
    INT 21H 
    
    LEA DX,M33
    MOV AH,9
    INT 21H
    
    LEA DX,M34
    MOV AH,9
    INT 21H
    
    LEA DX,M35
    MOV AH,9
    INT 21H
    
     
      LEA DX,M53
    MOV AH,9
    INT 21H
    
    MOV AH, 01
    INT 21H
    
    MOV BL, AL
    
    
    LEA DX,M55 ;TOTAL PRICE MESSAGE
    MOV AH,9
    INT 21H
    
    CMP BL, '1'
    JE SIXTY
    
     CMP BL, '2'
    JE EIGHTY   
    
    CMP BL, '3'
    JE EIGHTY
    
    CMP BL, '4'
    JE FOURTY
    
    CMP BL, '5'
    JE FIFTY
    
    CMP BL, '6'
    JE SEVENTY
    
    CMP BL, '7'
    JE SIXTY
    
    CMP BL, '8'
    JE SIXTY
    
    CMP BL, '9'
    JE SIXTY
    
    JMP EXIT ; IF INCORRECT ENTRY
  
    
;DINNER MENU ENDS HERE-------------------------------    
 
 
;SNACKS  ----------------------------------------    
 SNACKS:
    LEA DX,ORDERMSG
    MOV AH,9
    INT 21H
    
     LEA DX,M36
    MOV AH,9
    INT 21H
    
    LEA DX,M37
    MOV AH,9
    INT 21H
    
    LEA DX,M38
    MOV AH,9
    INT 21H
  
    
    LEA DX,M39
    MOV AH,9
    INT 21H
       
    
     
      LEA DX,M53
    MOV AH,9
    INT 21H
    
    MOV AH, 01
    INT 21H
    
    MOV BL, AL
    
    
    LEA DX,M55 ;TOTAL PRICE MESSAGE
    MOV AH,9
    INT 21H
    
    CMP BL, '1'
    JE EIGHT
    
     CMP BL, '2'
    JE EIGHTY
    
    CMP BL, '3'
    JE FIVE
    
    CMP BL, '4'
    JE FIVE
    
   
    
    JMP EXIT ; IF INCORRECT ENTRY
  
    
;SNACKS MENU ENDS HERE------------------------------- 
     

;DESSERT  ----------------------------------------    
 DESSERT:
    
     LEA DX,ORDERMSG
    MOV AH,9
    INT 21H
    
     LEA DX,M40
    MOV AH,9
    INT 21H
    
    LEA DX,M41
    MOV AH,9
    INT 21H
    
    LEA DX,M42
    MOV AH,9
    INT 21H
  
    
    LEA DX,M43
    MOV AH,9
    INT 21H
       
 
     
    LEA DX,M53
    MOV AH,9
    INT 21H
    
    MOV AH, 01
    INT 21H
    
    MOV BL, AL
    
    
    LEA DX,M55 ;TOTAL PRICE MESSAGE
    MOV AH,9
    INT 21H
    
    CMP BL, '1'
    JE FIFTY
    
     CMP BL, '2'
    JE FIFTY
    
    CMP BL, '3'
    JE FIFTY
    
    CMP BL, '4'
    JE FIFTY
    
    JMP EXIT ; IF INCORRECT ENTRY
  
    
;DESSERT MENU ENDS HERE------------------------------- 

;DRINKS  ----------------------------------------    
 DRINKS:
    
   LEA DX,ORDERMSG
    MOV AH,9
    INT 21H
    
     LEA DX,M44
    MOV AH,9
    INT 21H
    
    
    LEA DX,M46
    MOV AH,9
    INT 21H
  
    
    LEA DX,M47
    MOV AH,9
    INT 21H
       
    LEA DX,M48
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M49
    MOV AH,9
    INT 21H 
    
    LEA DX,M50
    MOV AH,9
    INT 21H
   
     
      LEA DX,M53
    MOV AH,9
    INT 21H
    
    MOV AH, 01
    INT 21H
    
    MOV BL, AL
    
    
    LEA DX,M55 ;TOTAL PRICE MESSAGE
    MOV AH,9
    INT 21H
    
    CMP BL, '1'
    JE EIGHT
    
     CMP BL, '2'
    JE SIX
    
    CMP BL, '3'
    JE NINE
    
    CMP BL, '4'
    JE NINE
    
    CMP BL, '5'
    JE SEVEN
    
    CMP BL, '6'
    JE FIVE
    
    
    JMP EXIT ; IF INCORRECT ENTRY
  
    
;DRINKS MENU ENDS HERE------------------------------- 
 
     
;PRICE==================================
     
    FIVE:
    MOV AH, 2
    MOV DL, '5'
    INT 21H
        
    JMP EXIT 
    
    ;----------
    
    SIX:
    MOV AH, 2
    MOV DL, '6'
    INT 21H
        
    JMP EXIT 
    
    SEVEN:
    MOV AH, 2
    MOV DL, '7'
    INT 21H
        
    JMP EXIT 
     
    EIGHT:
    MOV AH, 2
    MOV DL, '8'
    INT 21H
        
    JMP EXIT
    
    NINE:
    MOV AH, 2
    MOV DL, '9'
    INT 21H
        
    JMP EXIT 
    
    
    TEN:
    MOV AH, 2
    MOV DL, '1'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H
    
    JMP EXIT
    
    TWENTY:
    MOV AH, 2
    MOV DL, '2'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT
    
    THIRTY:
    MOV AH, 2
    MOV DL, '3'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT
    
    
    FOURTY:
    MOV AH, 2
    MOV DL, '4'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT
    
    
    FIFTY:
    MOV AH, 2
    MOV DL, '5'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT 
     
     
    SIXTY:
    MOV AH, 2
    MOV DL, '6'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT
    
    SEVENTY:
    MOV AH, 2
    MOV DL, '7'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT
    
    EIGHTY:
    MOV AH, 2
    MOV DL, '8'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT
    
    
    
    NINETY:
    MOV AH, 2
    MOV DL, '9'
    INT 21H
    
    MOV AH,2
    MOV DL, '0'
    INT 21H 
    
    JMP EXIT 
 

    

     
    EXIT:
    LEA DX,M56
    MOV AH,9
    INT 21H 
    
    LEA DX,M57
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
    
    MOV AH, 1
    INT 21H
    
    MOV BL, AL
    
    CMP BL, '1'
    JE MENU
    
    CMP BL, '2'
    JE FINISH
    
    
    FINISH:
    
            
            
            
    MAIN ENDP
    END MAIN