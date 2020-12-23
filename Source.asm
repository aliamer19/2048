; Author: Ali
; Program Name:
; Program Description:
; Date

INCLUDE Irvine32.inc
.data

.code
main PROC
call makeScreen

main ENDP
makeScreen PROC
;Makes the word 2048 on screen
;Recieves: dh for row, dl for col, ecx for loop
;Returns: pointer
;Requires: nothing

;For 2
mov dh,3 ;row 3
mov dl,25; col 25
mov ecx,15 ; loop 15
l1:
call gotoxy
call printRed
inc dl ;increment dl
call gotoxy
loop l1
mov dh,3 ;row 3
mov dl,40 ;col 40
mov ecx,7 ;loop 7
l2:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l2
mov dh,10 ;row 10
mov dl,40 ;col 40
mov ecx,15 ;loop 15
l3:
call gotoxy
call printRed 
dec dl ;decrement dl
call gotoxy
loop l3
mov dh,10 ;row 10
mov dl,25 ;col 25
mov ecx,7 ;loop 7
l4:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l4
mov dh,17 ;row 17
mov dl,25 ;col 25
mov ecx,16 ;loop 16
l5:
call gotoxy
call printRed
inc dl ;increment dl
call gotoxy
loop l5
;For 0
mov dh,3 ;row 3
mov dl,45 ;col 45
mov ecx,15 ;loop 15
l6:
call gotoxy
call printRed
inc dl ;increment dl
call gotoxy
loop l6
mov dh,3 ;row 3
mov dl,60 ;col 60
mov ecx,14 ;loop 14
l7:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l7
mov dh,17 ;row 17
mov dl,60 ;col 60
mov ecx,15 ;loop 15
l8:
call gotoxy
call printRed
dec dl ;decrement dl
call gotoxy
loop l8
mov dh,17 ;row 17
mov dl,45 ;col 45
mov ecx,14 ;loop 14
l9:
call gotoxy
call printRed
dec dh ;decrement dh
call gotoxy
loop l9
;For 4
mov dh,3 ;row 3
mov dl,65 ;col 65
mov ecx,7 ;loop 7
l10:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l10
mov dh,10 ;row 10
mov dl,65 ;row 65
mov ecx,15 ;loop 15
l11:
call gotoxy
call printRed
inc dl ;increment dl
call gotoxy
loop l11
mov dh,10 ;row 10
mov dl,80 ;col 80
mov ecx,8 ;loop 8
l12:
call gotoxy
call printRed
dec dh ;decrement dh
call gotoxy
loop l12
mov dh,10 ;row 10
mov dl,80 ;col 80
mov ecx,8 ;loop 8
l13:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l13
;For 8
mov dh,3 ;row 3
mov dl,85 ;col 85
mov ecx,15 ;loop 15
l14:
call gotoxy
call printRed
inc dl ;increment dl
call gotoxy
loop l14
mov dh,3 ;row 3
mov dl,100 ;col 100
mov ecx,7 ;loop 7
l15:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l15
mov dh,10 ;row 10
mov dl,100 ;col 100
mov ecx,15 ;loop 15
l16:
call gotoxy
call printRed
dec dl ;decrement dl
call gotoxy
loop l16
mov dh,10 ;row 10
mov dl,85 ;col 85
mov ecx,7 ;loop 7
l17:
call gotoxy
call printRed
dec dh ;decrement dh
call gotoxy
loop l17
mov dh,10 ;row 10
mov dl,85 ;col 85
mov ecx,7 ;loop 7
l18:
call gotoxy
call printRed
inc dh ;increment dh
call gotoxy
loop l18
mov dh,17 ;row 17
mov dl,85 ;col 85
mov ecx,15 ;loop 15
l19:
call gotoxy
call printRed
inc dl ;increment dl
call gotoxy
loop l19
mov dh,17 ;row 17
mov dl,100 ;col 100
mov ecx,7 ;loop 7
l20:
call gotoxy
call printRed
dec dh ;decrement dh
call gotoxy
loop l20
ret
makeScreen ENDP
printRed PROC
;Colors the text red
;Recieves: eax
;Returns: eax
;Requires: nothing
mov eax,white+(lightRed*16) 
call settextcolor
mov eax,' ' ;char
call writechar
call writechar
ret
printRed ENDP
 exit
END main