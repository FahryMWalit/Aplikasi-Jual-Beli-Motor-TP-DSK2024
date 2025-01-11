.MODEL LARGE
.STACK 1000H
.DATA

;OUTPUT
a1    db 10,13,10,13,'***           Selamat Datang di FZ MOTO            ***$'
aa    db 10,13,'        ||----------------------------------||$'
a2    db 10,13,'        ||        1. Vario                  ||$' 
a3    db 10,13,'        ||        2. Beat                   ||$' 
a4    db 10,13,'        ||        3. Cbr                    ||$'
a5    db 10,13,'        ||        4. Yamaha                 ||$' 
ab    db 10,13,'        ||----------------------------------||$' 

xx    db 10,13,10,13,'Masukkan pilihan anda $'

sej   db 10,13,10,13,' $'
   
a6    db 10,13,'Pilih Jenis Motor : $'  

ac    db 10,13,10,13,'pilih motor yang akan anda beli$' 

bb    db 10,13,'$' 

bc    db 10,13,'*$' 
    
bd    db 10,13,'*$' 

be    db 10,13,'*$' 
   
;Motor Vario
a7     db 10,13,'>>        1. Vario 125 2016                14   Juta <<$'
a8     db 10,13,'>>        2. Vario 125 2022                16   Juta <<$'
a9     db 10,13,'>>        3. Vario 150 2022                16   Juta <<$'
a10    db 10,13,'>>        4. Vario 150 2015                14   Juta <<$'
a11    db 10,13,'>>        5. Vario led 2018                16   Juta <<$'
    
;Motor Beat
a12    db 10,13,'>>         1. Beat Fi     2013              14   Juta <<$'
a13    db 10,13,'>>         2. Beat Esp    2015              14   Juta <<$'
a14    db 10,13,'>>         3. Beat Street 2022              14   Juta <<$'
a15    db 10,13,'>>         4. Beat Led    2020              17   Juta <<$'
a16    db 10,13,'>>         5. Beat Eco    2017              17   Juta <<$' 
                                                        
;Motor Cbr
a17    db 10,13,'>>        1. Cbr 250r   2017               30   Juta <<$'
a18    db 10,13,'>>        2. Cbr 150r   2021               20   Juta <<$'
a19    db 10,13,'>>        3. Cbr 250r   2019               42   Juta <<$'
a20    db 10,13,'>>        4. Cbr 150    2014               13   Juta <<$'
a21    db 10,13,'>>        5. Cbr 250rr  2019               37   Juta <<$' 
    
;Motor Yamaha
a22    db 10,13,'>>        1. Fino       2014               5    Juta <<$'
a23    db 10,13,'>>        2. Fazzio     2022               18   Juta <<$'
a24    db 10,13,'>>        3. Vixion     2014               12   Juta <<$'
a25    db 10,13,'>>        4. Mio Smile  2011               11   Juta <<$'
a26    db 10,13,'>>        5. Mio M3     2015               11   Juta <<$' 
    
;invalid
a27    db 10,13,'>>> Invalid Entry <<<$'
a28    db 10,13,'>> Try Again <<$'
    
a29    db 10,13,'>>        Pilih Orderan :       $'
a30    db 10,13,'>>        jumlah        :       $'
a31    db 10,13,'>>        Total Harga   :       $'   
    
a32    db 10,13,'>> 1. Back to Main Menu <<$'
a33    db 10,13,'>> 2. Exit <<$'
    
.CODE
MAIN PROC
    mov ax,@data
    mov ds,ax 
    
    TOP:
    
    mov ah,9
    lea dx,a1
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h
    
     
    
    mov ah,9
    lea dx,aa
    int 21h
    
    mov ah,9
    lea dx,a2
    int 21h       
    
    mov ah,9
    lea dx,a3
    int 21h 
    
    mov ah,9
    lea dx,a4
    int 21h
    
    mov ah,9
    lea dx,a5
    int 21h
    
    mov ah,9
    lea dx,ab
    int 21h 
    
    mov ah,9
    lea dx,sej
    int 21h  
    
    
    
    mov ah,9
    lea dx,a6
    int 21h  
         
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    cmp bh,1
    je Vario 
    
    cmp bh,2
    je Beat 
    
    cmp bh,3
    je Cbr
    
    cmp bh,4
    je Yamaha 
                
    jmp invalid            

    
    Vario:
    
    mov ah,9     
    lea dx,ac
    int 21h    
    
    mov ah,9
    lea dx,sej
    int 21h      
    
    mov ah,9
    lea dx,bb
    int 21h
    
    
    mov ah,9
    lea dx,a7           
    int 21h
    
    mov ah,9
    lea dx,a8          
    int 21h
    
    mov ah,9            
    lea dx,a9           
    int 21h  
    
    mov ah,9
    lea dx,a10         
    int 21h
    
    mov ah,9
    lea dx,a11          
    int 21h             
              
    mov ah,9
    lea dx,bb
    int 21h
              
   
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48  
    
    
    cmp bl,1
    je sixty
    
    cmp bl,2
    je fifty
    
    cmp bl,3
    je fifty
    
    cmp bl,4
    je sixty
    
    cmp bl,5
    je fifty
    
    jmp invalid 
    
    sixty:
    
    mov bl,14 
    mov ah,9
    lea dx,a30
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31 
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    
    mov dl,' '
    int 21h  
    mov dl,'J'
    int 21h  
    mov dl,'u'
    int 21h   
    mov dl,'t'
    int 21h  
    mov dl,'a'
    int 21h 
    
    
    ; back to menu
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    fifty: 
    
    mov bl,16
    mov ah,9
    lea dx,a30              
    int 21h 
    
      
    mov ah,1
    int 21h
    sub al,48
     
       
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    mov ah,9
    LEA dx,a31              
    INT 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h 
    
    mov dl,'J'
    int 21h
    
    mov dl,'u'
    int 21h  
    
    mov dl,'t'
    int 21h 
    
    mov dl,'a'
    int 21h 
  
    ; back to menu
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    
    jmp exit
           
    
    
    Beat:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h     
    
    
    mov ah,9
    lea dx,bd
    int 21h
    
    mov ah,9
    lea dx,a12            ;1
    int 21h
    
    mov ah,9
    lea dx,a13            ;2
    int 21h
    
    mov ah,9
    lea dx,a14            ;3
    int 21h
    
    mov ah,9
    lea dx,a15            ;4
    int 21h 
    
    mov ah,9
    lea dx,a16            ;5
    int 21h  
    
    mov ah,9
    lea dx,bd
    int 21h 
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je fourty
    
    cmp bl,2
    je fourty
    
    cmp bl,3
    je fourty
    
    cmp bl,4
    je seventy
    
    cmp bl,5
    je seventy 
    
    jmp invalid 
    
    fourty:
    
    mov bl,14 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h 
    
     mov dl,'u'
    int 21h 
    
     mov dl,'t'
    int 21h 
             
     mov dl,'a'
    int 21h 
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
     
    seventy:
    
    mov bl,17 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
     
    jmp exit
    
    
     
    
    Cbr:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h 
             
             
    mov ah,9
    lea dx,bc
    int 21h 
     
    mov ah,9
    lea dx,a17            ;1
    int 21h
    
    mov ah,9
    lea dx,a18            ;2
    int 21h
    
    mov ah,9
    lea dx,a19            ;3
    int 21h
    
    mov ah,9
    lea dx,a20            ;4
    int 21h 
    
    mov ah,9
    lea dx,a21            ;5
    int 21h 
    
    mov ah,9
    lea dx,bc
    int 21h
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
   
    cmp bl,1
    je thirty
    
    cmp bl,2
    je twenty
    
    cmp bl,3
    je fourtytwo
    
    cmp bl,4
    je thirtheen
    
    cmp bl,5
    je thirtyseven
    
    jmp invalid 
    
    thirty:
    
    mov bl,30 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    twenty:
    
    mov bl,20 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    fourtytwo:
    
    mov bl,42 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 


    thirtheen:
    
    mov bl,13 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 

    thirtyseven:
    
    mov bl,37 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 

    
    
    Yamaha:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h    
    
    
    mov ah,9
    lea dx,be
    int 21h
    
    mov ah,9
    lea dx,a22            ;1
    int 21h
    
    mov ah,9
    lea dx,a23            ;2
    int 21h
    
    mov ah,9
    lea dx,a24            ;3
    int 21h
    
    mov ah,9
    lea dx,a25            ;4
    int 21h 
    
    mov ah,9
    lea dx,a26            ;5
    int 21h 
    
    mov ah,9
    lea dx,be
    int 21h
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je five
    
    cmp bl,2
    je eight
    
    cmp bl,3
    je two
    
    cmp bl,4
    je eleven
    
    cmp bl,5
    je eleven
    
    jmp invalid 
    
    five:
    
    mov bl,15 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 

    eight:
    
    mov bl,18 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    two:
    
    mov bl,12 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    eleven:
    
    mov bl,11 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,' '
    int 21h
    
    mov dl,'J'
    int 21h
    
     mov dl,'u'
    int 21h   
    
     mov dl,'t'
    int 21h 
    
     mov dl,'a'
    int 21h 
    
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 

    
    invalid:
        
    mov ah,9    
    lea dx,a27
    int 21h 
    
    
    mov ah,9
    lea dx,a28 
    int 21h 
    
    
    
    jmp exit
    
    
          
    
     exit:
     
     mov ah,4ch
     int 21h
     main endp
END MAIN