.model small
.stack 100h
.data
trival1 db 0
trival2 db 0
trival3 db 0
Thingy dw 0
RNum db 0

score db 0
score2 db 0
score3 db 0

level2 db " Press E to go to the next level $"
levelpassed db "Level passed $"
levelfailed db "Level Failed $"
lastdisp db "Highest score: 100",0
CarrDisp db 0
Filedisp db "Usman L1: 130 L2: 30 L3: 50",0
Indexer db 0
ComboVals db 0
movescount db 3
Scorer db " $"
moves db " $"
MovesLeft db " Moves Left: $"
LL dw 0

ComboCheck db 0
ComboCheck2 db 0
handler dw ?
filename db "output.txt",0
strr1 db "level1: ",0
strr2 db "level2: ",0
strr3 db "level3: ",0
swap db 0
crush	DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;01
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;46
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;46
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;02
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;03
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;04
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;05
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;06
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;07
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;08
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;09
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;10
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;11
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;12
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;13
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;14
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;15
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;16
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;17
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;18
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;19
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;20
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;21
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;22
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;23
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;24
		DB 14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14 ;25
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;26
		DB	14,14,14, 4,14,14,14, 4,14, 4, 4,14, 4,14,14,14, 4,14, 4, 4, 4,14, 4, 4, 4, 4 ;27
		DB	14, 4, 4, 4,14, 4,14, 4,14,14, 4,14, 4,14, 4,14, 4, 4,14, 4,14, 4, 4, 4, 4, 4 ;28
		DB	14, 4, 4, 4,14,14,14, 4,14, 4,14,14, 4,14, 4,14, 4, 4, 4,14, 4, 4, 4, 4, 4, 4 ;29
		DB	14,14,14, 4,14, 4,14, 4,14, 4, 4,14, 4,14,14,14, 4, 4, 4,14, 4, 4, 4, 4, 4, 4 ;30
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;31
		DB	4, 4,14,14,14, 4,14,14,14, 4, 4, 4,14, 4, 4,14, 4,14,14,14, 4,14, 4,14, 4, 4 ;32
		DB	4, 4,14, 4, 4, 4,14, 4,14, 4, 4, 4,14, 4, 4,14, 4,14, 4, 4, 4,14, 4,14, 4, 4 ;33
		DB	4, 4,14, 4, 4, 4,14,14,14, 4, 4, 4,14, 4, 4,14, 4, 4,14, 4, 4,14,14,14, 4, 4 ;34
		DB	4, 4,14, 4, 4, 4,14, 4, 4,14, 4, 4,14, 4, 4,14, 4, 4, 4,14, 4,14, 4,14, 4, 4 ;35
		DB	4, 4,14,14,14, 4,14, 4, 4,14,14, 4,14,14,14,14, 4,14,14,14, 4,14, 4,14, 4, 4 ;36
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;37	
		DB	14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14 ;38
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;39
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;40
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;41
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;42
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;43
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;44


Gameover DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;01
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;46
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;46
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;02
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;03
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;04
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;05
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;06
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;07
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;08
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;09
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;10
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;11
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;12
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;13
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;14
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;15
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;16
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;17
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;18
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;19
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;20
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;21
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;22
		DB 14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14 ;25
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;13
		DB	14,14,14,14, 4,14,14,14, 4,14, 4, 4, 4,14, 4,14,14,14, 4, 4, 4, 4, 4, 4, 4, 4 ;14
		DB	14, 4, 4, 4, 4,14, 4,14, 4,14,14, 4,14,14, 4,14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;15
		DB	14, 4,14,14, 4,14,14,14, 4,14, 4,14, 4,14, 4,14,14, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;16
		DB	14, 4, 4,14, 4,14, 4,14, 4,14, 4, 4, 4,14, 4,14, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;17
		DB	14,14,14,14, 4,14, 4,14, 4,14, 4, 4, 4,14, 4,14,14,14, 4, 4, 4, 4, 4, 4, 4, 4 ;18
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;20
		DB	4, 4, 4, 4,14,14, 4, 4,14, 4, 4, 4,14, 4,14,14,14, 4,14,14,14, 4, 4, 4, 4, 4 ;21
		DB	4, 4, 4,14, 4, 4,14, 4,14, 4, 4, 4,14, 4,14, 4, 4, 4,14, 4,14, 4, 4, 4, 4, 4 ;22
		DB	4, 4, 4,14, 4, 4,14, 4, 4,14, 4,14, 4, 4,14,14, 4, 4,14,14,14, 4, 4, 4, 4, 4 ;23
		DB	4, 4, 4,14, 4, 4,14, 4, 4,14, 4,14, 4, 4,14, 4, 4, 4,14, 4, 4,14, 4, 4, 4, 4 ;24	
		DB	4, 4, 4, 4,14,14, 4, 4, 4, 4,14, 4, 4, 4,14,14,14, 4,14, 4, 4,14,14, 4, 4, 4 ;39
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;40
		DB	14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14 ;38
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;23
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;24
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;41
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;42
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;43
		DB	4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ;44

		

ArrayCandies db 49 DUP(0)
xcords db 49 DUP(0)
ycords db 49 DUP(0)

name2 db "Enter player name: $"
instruction db "Instructions: $"
instruct1 db "Swap Candies to score points $"
instruct2 db "bombs give you extra points $"
inputName db 20 dup('$')
scoreString db "Score: $"
count db 0
count2 db 0
tcount db 0
tcount2 db 0
tcount3 db 0
scount db 0
;coordinates
xicoord dw 0		; x coordinate initial to draw
xfcoord dw 0		;y
yicoord dw 0
yfcoord dw 0
color db 0
time db 0
pls db 0

;=========Start===============================================================================================================
.code
main proc

mov ax,@data
mov ds,ax                                                                                 
    mov al, 13h            
    mov ah, 00h
    int 10H


;====Name Input=================================================================================================================
	mov xicoord, 25
	mov xfcoord, 600
	mov yicoord, 25
	mov yfcoord, 450
	mov color, 17
	call box

	mov ch,10		;the cords of the input name string y
	mov cl,5		; y
	mov si, offset name2
	call drawString

mov si, offset inputName
string1:
    mov ah,1
 	int 21h
	cmp al,13
	je endit2

    mov [si],al
    inc si
	jmp string1

	endit2:

	;==========================================crush============================================================================
	mov xicoord, 0
	mov xfcoord, 640
	mov yicoord, 0
	mov yfcoord, 400
	mov color, 4
	call box
	


	mov si, offset crush	;draw crush 
	mov xicoord, 20
	mov xfcoord, 158
	mov yicoord, 100
	mov yfcoord, 178

	mov ah,0ch
	mov dx, xicoord		; x coordinate initial( up down)
yloop:
	mov cx, yicoord		;y coordinate initial (left right)
xloop:
	mov al,[si]
	int 10h
	inc cx
	int 10h
	inc cx
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; y coordinate final( left right)
	jb xloop
	inc dx
	mov cx, yicoord
	sub si,26
xloop2:
	mov al,[si]
	int 10h
	inc cx
	int 10h
	inc cx
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; y coordinate final( left right)
	jb xloop2
	inc dx
	mov cx, yicoord
	sub si,26
xloop3:
	mov al,[si]
	int 10h
	inc cx
	int 10h
	inc cx
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; final cords y
	jb xloop3
	inc dx
	cmp dx, xfcoord			; final cords x
	jb yloop

;===============================================Time Interval=======================================================================
	 mov cx, 15H      
	 mov dx, 4240H
	 mov ah, 86H
	 int 15h

;------------------------------------instructions--------------


	mov xicoord, 25
	mov xfcoord, 600
	mov yicoord, 25
	mov yfcoord, 450
	mov color, 17
	call box

	mov ch,10		;the cords of the input name string y
	mov cl,5		; y
	mov si, offset instruction
	call drawString
	mov ch,12		;the cords of the input name string y
	mov cl,5		; y
	mov si, offset instruct1
	call drawString
	mov ch,14		;the cords of the input name string y
	mov cl,5		; y
	mov si, offset instruct2
	call drawString



	mov cx, 20H      
	mov dx, 4240H
	mov ah, 86H
	int 15h

;==================================================main crush====================================================================
mov xicoord, 0
	mov xfcoord, 640
	mov yicoord, 0
	mov yfcoord, 400
	mov color, 21
	call box
;back part	
	mov xicoord, 90
	mov xfcoord, 265
	mov yicoord, 20
	mov yfcoord, 195
	mov color, 0
	call box
;line
	mov xicoord, 90
	mov xfcoord, 265
	mov yicoord, 45
	mov yfcoord, 46
	mov color, 8
	call box
	mov count, 0
loopForLine:
	cmp count, 5
	je SecondLineLoop
	add yicoord, 25
	add yfcoord, 25
	call box
	inc count
	jmp loopForLine

SecondLineLoop:
	mov yicoord, 20
	mov yfcoord, 195
	mov xicoord, 115
	mov xfcoord, 116
	call box
	mov count, 0
ThirdLineLoop:
	cmp count, 6
	je LineEnd
	add xicoord, 25
	add xfcoord, 25
	call box
	inc count
	jmp ThirdLineLoop
LineEnd:
	mov xicoord, 30
	mov xfcoord, 85
	mov yicoord, 45
	mov yfcoord, 60
	mov color, 7
	call box

;-----------------------------------------------drawCandies----------------------------------------------------------
	mov xicoord, 95
	mov xfcoord, 110
	mov yicoord, 25
	mov yfcoord, 40
	mov color, 4
	mov count, 0
	mov count2, 0
	mov si, 0
	NextRow:
		mov xicoord, 95
		mov xfcoord, 110
		mov count, 0
NextCandy:
	
	call random
	mov ah,0ch
	call randomizer
	inc si
	add xicoord, 25
	add xfcoord, 25
	inc count
	cmp count, 7
	jl NextCandy
	add yicoord, 25
	add yfcoord, 25	
	inc count2
	cmp count2, 7
	jl NextRow

	mov ch,6		;the cords of the input name string y
	mov cl,4	; x
	mov si, offset inputname
	call drawString

	mov ax, 1
	int 33h

	Level1:
		call mouseC
		call checkindex
		mov LL,si
		push ax
		mov ax,0
		mov al, ArrayCandies[si]
		mov swap, al
		pop ax
		call mouseC
		call checkindex
		push ax
			mov ax,si
			sub ax,LL
			.if ax!=1 && ax!=7 && ax!=-1 && ax!=-7
				jmp Level1
			.endif
			;bomb
			push si
			.if ArrayCandies[si]==6
				push cx
				push bx
					call random
					mov al,RNum
					mov ArrayCandies[si],al
				pop bx
				pop cx
				mov si,LL
				push ax
					mov ax,0
					mov al,ArrayCandies[si]
					call GetBombed
				pop ax
				jmp Yesssoooo
			.endif
			pop si
			push si
			mov si,LL
			.if ArrayCandies[si]==6
				push cx
				push bx
					call random
					mov al,RNum
					mov ArrayCandies[si],al
				pop bx
				pop cx
				mov si,LL
				push ax
					mov ax,0
					mov al,ArrayCandies[si]
					call GetBombed
				pop ax
				jmp Yesssoooo
			.endif
			pop si
		pop ax
		push ax
		mov ax,0
		mov al,ArrayCandies[si]
		push si
		mov si,LL
		mov ArrayCandies[si],al
		pop si
		mov al,swap
		mov ArrayCandies[si],al
		pop ax
	Yesssoooo:
	call Ccombo
	call FixArr
	call DispArr
	mov xicoord, 120
	mov xfcoord, 150
	mov yicoord, 8
	mov yfcoord, 16
	mov color, 0
	call box
	mov ah,0Ch
	mov al,0fh
	mov bx, 0
	mov ah, 02h
	mov dh,	1
	mov dl, 16
	int 10h
	mov ch, 0
	mov cl, 1
	mov si, offset MovesLeft
	mov color, 4
	call drawString
	mov ch, 0
	mov cl, 1
	mov cl, movescount
	push ax
	mov ax,0
	mov al,cl
	push bx
	mov bl,10
	div bl
	mov bl,al
	mov bh,ah
	;add bl, 48
	mov moves,bl
	;lea dx, offset moves
	;mov ah, 09h
	;int 21h
	add bh, 48
	mov moves,bh
	lea dx, offset moves
	mov ah, 09h
	int 21h
	lea dx,offset scoreString
	mov ah,09h
	int 21h
	push cx
	mov ch,3
	mov cl,8
	push ax
		mov ax,0
		mov al,score
		mov bl,10
		div bl
		mov bl,al
		mov bh,ah
		add bl, 48
		mov Scorer,bl
		lea dx, offset Scorer
		mov ah, 09h
		int 21h
		add bh, 48
		mov Scorer,bh
		lea dx, offset Scorer
		mov ah, 09h
		int 21h
	pop ax
	pop cx
	pop bx
	pop ax
	dec movescount
	cmp movescount,0
	jne Level1

	.if score > 50
	mov ch, 10
	mov cl, 1
	mov si, offset levelpassed
	mov color, 4
	call drawString
	.else
		mov ch, 10
		mov cl, 1
		mov si, offset levelfailed
		mov color, 4
	call drawString
	.endif
	mov ch, 8
	mov cl, 1
	mov si, offset level2
	mov color, 4
	call drawString


	 
;=================================take input for next level=================================================
nextlevelcheck:
	mov ah, 01
	int 16h
	jz nextlevelcheck
	mov ah, 0
	int 16h
	cmp al, 'E';
	je needAnotherName
	cmp al, 'e';
	je NeedAnotherName
	jmp exit

	;=================================level 2 board========================================
NeedAnotherName:
	mov xicoord, 0
	mov xfcoord, 640
	mov yicoord, 0
	mov yfcoord, 400
	mov color, 21
	call box
;back part	
	mov xicoord, 80
	mov xfcoord, 275
	mov yicoord, 10
	mov yfcoord, 205
	mov color, 0
	call box
;line
	mov xicoord, 115
	mov xfcoord, 240
	mov yicoord, 20
	mov yfcoord, 21
	mov color, 8
	call box
	mov count, 0
loopForLine11:
	cmp count, 7
	je SecondLineLoop22
	add yicoord, 25
	add yfcoord, 25
	call box
	inc count
	jmp loopForLine11

SecondLineLoop22:
	mov yicoord, 20
	mov yfcoord, 195
	mov xicoord, 115
	mov xfcoord, 116
	call box
	mov count, 0
ThirdLineLoop33:
	cmp count, 5
	je LineEnd44
	add xicoord, 25
	add xfcoord, 25
	call box
	inc count
	jmp ThirdLineLoop33
LineEnd44:
	mov xicoord, 30
	mov xfcoord, 85
	mov yicoord, 45
	mov yfcoord, 60
	mov color, 7
	call box

	;=============================extra thingies lines that are being annoying=================================
	mov count, 0
	mov xicoord, 90
	mov xfcoord, 265
	mov yicoord, 70
	mov yfcoord, 71
	mov color, 8
	call box
	mov yicoord, 95
	mov yfcoord, 96
	call box
	mov yicoord, 120
	mov yfcoord, 121
	call box
	mov yicoord, 145
	mov yfcoord, 146
	call box
	mov count, 0

	mov xfcoord, 91
	mov yicoord, 70
	mov yfcoord, 95
	call box
	mov yicoord, 120
	mov yfcoord, 145
	call box
	mov xicoord, 265
	mov xfcoord, 266
	call box
	mov yicoord, 70
	mov yfcoord, 95
	call box

	mov xicoord, 165
	mov xfcoord, 190
	mov yicoord, 20
	mov yfcoord, 21
	mov color, 0
	call box
	mov yicoord, 195
	mov yfcoord, 196
	mov color, 0
	call box


;-=========================================output name =========================================
	mov ch,6		;the cords of the input name string y
	mov cl,4	; x
	mov si, offset inputname
	mov color, 4
	call drawString

	mov ch, 1
	mov cl, 1
	mov si, offset MovesLeft
	mov color, 4
	call drawString
;========================================draw candies again=========================================
	mov movescount, 3
	mov xicoord, 120
	mov xfcoord, 135
	mov yicoord, 50
	mov yfcoord, 65
	mov color, 4
	mov count, 0
	mov count2, 0
	NextRow2:
		mov xicoord, 120
		mov xfcoord, 135
		mov count, 0
NextCandy2:
	
	call random
	call delay
	call delay
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	inc count
	cmp count, 5
	jl NextCandy2
	add yicoord, 25
	add yfcoord, 25	
	inc count2
	cmp count2, 5
	jl NextRow2
	call delay
	

;----------------------------------extra annoying candies--------------------------------------------
mov RNum, 0
call random
	mov xicoord, 95
	mov xfcoord, 110
	mov yicoord, 75
	mov yfcoord, 100
	call randomizer	
	call random

	add yicoord, 50
	add yfcoord, 50
	call randomizer
	call random
	mov xicoord, 245
	mov xfcoord, 260
	call randomizer
	mov yicoord, 75
	mov yfcoord, 100
	call randomizer
	call random
	mov xicoord, 120
	mov xfcoord, 135
	mov yicoord, 25
	mov yfcoord, 40
	call randomizer
	call random
	add xicoord, 25
	add xfcoord, 25
	call randomizer
	call random
	add xicoord, 50
	add xfcoord, 50
	call randomizer
	call random
	add xicoord, 25
	add xfcoord, 25
	call randomizer
	call random
	;-----------------
	mov xicoord, 120
	mov xfcoord, 135
	mov yicoord, 175
	mov yfcoord, 190
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	call randomizer
	add xicoord, 50
	add xfcoord, 50
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	call randomizer


	Level21:
		call mouseC2
		call checkindex
		mov LL,si
		push ax
		mov ax,0
		mov al, ArrayCandies[si]
		mov swap, al
		pop ax
		call mouseC2
		call checkindex
		push ax
			mov ax,si
			sub ax,LL
			.if ax!=1 && ax!=7 && ax!=-1 && ax!=-7
				jmp Level21
			.endif
			;bomb
			push si
			.if ArrayCandies[si]==6
				push cx
				push bx
					call random
					mov al,RNum
					mov ArrayCandies[si],al
				pop bx
				pop cx
				mov si,LL
				push ax
					mov ax,0
					mov al,ArrayCandies[si]
					call GetBombed
				pop ax
				jmp Yesssoooo
			.endif
			pop si
			push si
			mov si,LL
			.if ArrayCandies[si]==6
				push cx
				push bx
					call random
					mov al,RNum
					mov ArrayCandies[si],al
				pop bx
				pop cx
				mov si,LL
				push ax
					mov ax,0
					mov al,ArrayCandies[si]
					call GetBombed
				pop ax
				jmp Yesssooo
			.endif
			pop si
		pop ax
		push ax
		mov ax,0
		mov al,ArrayCandies[si]
		push si
		mov si,LL
		mov ArrayCandies[si],al
		pop si
		mov al,swap
		mov ArrayCandies[si],al
		pop ax
	Yesssooo:
	call Ccombo2
	call FixArr
	call DispArr2
	mov xicoord, 120
	mov xfcoord, 150
	mov yicoord, 8
	mov yfcoord, 16
	mov color, 0
	call box
	mov ah,0Ch
	mov al,0fh
	mov bx, 0
	mov ah, 02h
	mov dh,	1
	mov dl, 16
	int 10h
	mov cl, movescount
	push ax
	mov ax,0
	mov al,cl
	push bx
	mov bl,10
	div bl
	mov bl,al
	mov bh,ah
	;add bl, 48
	mov moves,bl
	;lea dx, offset moves
	;mov ah, 09h
	;int 21h
	add bh, 48
	mov moves,bh
	lea dx, offset moves
	mov ah, 09h
	int 21h
	lea dx,offset scoreString
	mov ah,09h
	int 21h
	push cx
	mov ch,2
	mov cl,8
	push ax
		mov ax,0
		mov al,score
		mov bl,10
		div bl
		mov bl,al
		add score2,bl
		mov bh,ah
		add bl, 48
		mov Scorer,bl
		lea dx, offset Scorer
		mov ah, 09h
		int 21h
		add bh, 48
		mov Scorer,bh
		lea dx, offset Scorer
		mov ah, 09h
		int 21h
	pop ax
	pop cx
	pop bx
	pop ax
	dec movescount
	cmp movescount,0
	jne Level21

	.if score > 50
	mov ch, 10
	mov cl, 1
	mov si, offset levelpassed
	mov color, 4
	call drawString
	.else
		mov ch, 10
		mov cl, 1
		mov si, offset levelfailed
		mov color, 4
	call drawString
	.endif
	mov ch, 8
	mov cl, 1
	mov si, offset level2
	mov color, 4
	call drawString


	mov movescount, 3
;==============================================level 3==========================================================

nextlevelcheck2:
	mov ah, 01
	int 16h
	jz nextlevelcheck2
	mov ah, 0
	int 16h
	cmp al, 'E';
	je needAnotherName2
	cmp al, 'e';
	je NeedAnotherName2
	jmp exit

;=======================================level 3 board ===================================================
NeedAnotherName2:

mov xicoord, 0
	mov xfcoord, 640
	mov yicoord, 0
	mov yfcoord, 400
	mov color, 21
	call box
;back part	
	mov xicoord, 90
	mov xfcoord, 265
	mov yicoord, 20
	mov yfcoord, 195
	mov color, 0
	call box
;line
	mov xicoord, 90
	mov xfcoord, 265
	mov yicoord, 45
	mov yfcoord, 46
	mov color, 8
	call box
	mov count, 0
loopForLine111:
	cmp count, 5
	je SecondLineLoop222
	add yicoord, 25
	add yfcoord, 25
	call box
	inc count
	jmp loopForLine111

SecondLineLoop222:
	mov yicoord, 20
	mov yfcoord, 195
	mov xicoord, 115
	mov xfcoord, 116
	call box
	mov count, 0
ThirdLineLoop333:
	cmp count, 6
	je LineEnd444
	add xicoord, 25
	add xfcoord, 25
	call box
	inc count
	jmp ThirdLineLoop333
LineEnd444:
	mov xicoord, 30
	mov xfcoord, 85
	mov yicoord, 45
	mov yfcoord, 60
	mov color, 7
	call box
;-=========================================output name =========================================
	mov ch,6		;the cords of the input name string y
	mov cl,4	; x
	mov si, offset inputname
	mov color, 4
	call drawString

	mov ch, 1
	mov cl, 1
	mov si, offset MovesLeft
	mov color, 4
	call drawString
;-----------------------------------------------drawCandies a third time----------------------------------------------------------
	mov xicoord, 95
	mov xfcoord, 110
	mov yicoord, 25
	mov yfcoord, 40
	mov color, 4
	mov count, 0
	mov count2, 0
	NextRow222:
		mov xicoord, 95
		mov xfcoord, 110
		mov count, 0
NextCandy222:
	
	call random
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	inc count
	cmp count, 3
	jl NextCandy222
	add yicoord, 25
	add yfcoord, 25	
	inc count2
	cmp count2, 3
	jl NextRow222


	add xicoord, 25
	add xfcoord, 25
	add yicoord, 25
	add yfcoord, 25
	mov count, 0
	mov count2, 0
	NextRow333:
		mov xicoord, 95
		mov xfcoord, 110
		mov count, 0
NextCandy333:
	
	call random
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	inc count
	cmp count, 3
	jl NextCandy333
	add yicoord, 25
	add yfcoord, 25	
	inc count2
	cmp count2, 3
	jl NextRow333


	mov yicoord, 25
	mov yfcoord, 40
	mov xicoord, 195
	mov xicoord, 210
	mov count, 0
	mov count2, 0
	NextRow444:
		mov xicoord, 195
		mov xfcoord, 210
		mov count, 0
NextCandy444:
	
	call random
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	inc count
	cmp count, 3
	jl NextCandy444
	add yicoord, 25
	add yfcoord, 25	
	inc count2
	cmp count2, 3
	jl NextRow444

	;------------
	
	mov xicoord, 195
	mov xicoord, 210
	add yicoord, 25
	add yfcoord, 25
	mov count, 0
	mov count2, 0
	NextRow555:
		mov xicoord, 195
		mov xfcoord, 210
		mov count, 0
NextCandy555:
	
	call random
	call randomizer
	add xicoord, 25
	add xfcoord, 25
	inc count
	cmp count, 3
	jl NextCandy555
	add yicoord, 25
	add yfcoord, 25	
	inc count2
	cmp count2, 3
	jl NextRow555

	Level31:
		call mouseC3
		call checkindex
		mov LL,si
		push ax
		mov ax,0
		mov al, ArrayCandies[si]
		mov swap, al
		pop ax
		call mouseC3
		call checkindex
		push ax
			mov ax,si
			sub ax,LL
			.if ax!=1 && ax!=7 && ax!=-1 && ax!=-7
				jmp Level31
			.endif
			;bomb
			push si
			.if ArrayCandies[si]==6
				push cx
				push bx
					call random
					mov al,RNum
					mov ArrayCandies[si],al
				pop bx
				pop cx
				mov si,LL
				push ax
					mov ax,0
					mov al,ArrayCandies[si]
					call GetBombed
				pop ax
				jmp Yesssoooo
			.endif
			pop si
			push si
			mov si,LL
			.if ArrayCandies[si]==6
				push cx
				push bx
					call random
					mov al,RNum
					mov ArrayCandies[si],al
				pop bx
				pop cx
				mov si,LL
				push ax
					mov ax,0
					mov al,ArrayCandies[si]
					call GetBombed
				pop ax
				jmp Yesssoo
			.endif
			pop si
		pop ax
		push ax
		mov ax,0
		mov al,ArrayCandies[si]
		push si
		mov si,LL
		mov ArrayCandies[si],al
		pop si
		mov al,swap
		mov ArrayCandies[si],al
		pop ax
	Yesssoo:
	call Ccombo3
	call FixArr
	call DispArr3
	mov xicoord, 120
	mov xfcoord, 150
	mov yicoord, 8
	mov yfcoord, 16
	mov color, 0
	call box
	mov ah,0Ch
	mov al,0fh
	mov bx, 0
	mov ah, 02h
	mov dh,	1
	mov dl, 16
	int 10h
	mov cl, movescount
	push ax
	mov ax,0
	mov al,cl
	push bx
	mov bl,10
	div bl
	mov bl,al
	mov bh,ah
	;add bl, 48
	mov moves,bl
	;lea dx, offset moves
	;mov ah, 09h
	;int 21h
	add bh, 48
	mov moves,bh
	lea dx, offset moves
	mov ah, 09h
	int 21h
	lea dx,offset scoreString
	mov ah,09h
	int 21h
	push cx
	mov ch,2
	mov cl,8
	push ax
		mov ax,0
		mov al,score
		mov bl,10
		div bl
		mov bl,al
		add score3,bl
		mov bh,ah
		add bl, 48
		mov Scorer,bl
		lea dx, offset Scorer
		mov ah, 09h
		int 21h
		add bh, 48
		mov Scorer,bh
		lea dx, offset Scorer
		mov ah, 09h
		int 21h
	pop ax
	pop cx
	pop bx
	pop ax
	dec movescount
	cmp movescount,0
	jne Level31


	call filetext

	.if score > 50
	mov ch, 10
	mov cl, 1
	mov si, offset levelpassed
	mov color, 4
	call drawString
	.else
		mov ch, 10
		mov cl, 1
		mov si, offset levelfailed
		mov color, 4
	call drawString
	.endif

	


    ;=========================================GameOver Screen============================================================

	mov xicoord, 0
	mov xfcoord, 640
	mov yicoord, 0
	mov yfcoord, 400
	mov color, 4
	call box
	mov si, offset GameOver	;draw GameOver 
	mov xicoord, 20
	mov xfcoord, 158
	mov yicoord, 100
	mov yfcoord, 178

	mov ah,0ch
	mov dx, xicoord		; x coordinate initial( up down)
zloop:                  ; Corrected label name
	mov cx, yicoord		;y coordinate initial (left right)
ploop:
	mov al,[si]
	int 10h
	inc cx
	int 10h
	inc cx
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; y coordinate final( left right)
	jb ploop
	inc dx
	mov cx, yicoord
	sub si,26
ploop2:
	mov al,[si]
	int 10h
	inc cx
	int 10h
	inc cx
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; y coordinate final( left right)
	jb ploop2
	inc dx
	mov cx, yicoord
	sub si,26
ploop3:
	mov al,[si]
	int 10h
	inc cx
	int 10h
	inc cx
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; final coords y
	jb ploop3
	inc dx
	cmp dx, xfcoord			; final coords x
	jb zloop
	;=========================================exit============================================================
exit:

mov ah,04ch
int 21h
main endp















































;--------------------------------------------------------------------------------string Output-----------
drawString proc
	mov ah,02h                
    mov bh,0				;color
    mov dh,ch				;y coords
    mov dl,cl				;x coords
    int 10h   
                 
    lea dx , [si]		;string variable
    mov ah , 09h
    int 21h

ret
drawString endp

;-----------------------------------------------------------------------------Draw strings (characters)--------
draw proc
	mov ah,0ch
	mov dx, xicoord		; x coordinate initial( up down)
yloop1:
	mov cx, yicoord		;y coordinate initial (left right)
xloop1:
	mov al,[si]
	int 10h
	inc si
	inc cx
	cmp cx, yfcoord			; y coordinate final( left right)
	jb xloop1
	inc dx
	cmp dx, xfcoord			; x coordinate final( up down)
	jb yloop1
ret
draw endp

;------------------------------------------------------------------------------Draw box--------------
box proc
	mov ah, 0ch
	mov dx, yicoord		
drawing:		
	mov cx,xicoord		
	here:
		mov al, color	
		int 10h
		inc cx
		cmp cx,xfcoord
		jl  here
	inc dx
	cmp dx,yfcoord
	jl  drawing

ret
box endp
;--------------------------------------------call working bombproc-----------------------------
workingbomb proc
	.if si==0
		mov yicoord, 20
		mov yfcoord, 45
		mov xicoord, 90
		mov xfcoord, 115
		mov color, 0
		call box
		.endif
ret
workingbomb endp
;------------------------------------------DrawSQuare-----------------------------------------------------
Square proc
	mov ah, 0ch
	mov dx, yicoord	
	mov color, 10
drawing1:		
	mov cx,xicoord		
	here1:
		mov al, color	
		int 10h
		inc cx
		cmp cx,xfcoord
		jl  here1
	inc dx
	cmp dx,yfcoord
	jl  drawing1

ret
Square endp

;------------------------------------------DrawDiamond-----------------------------------------------------

Diamond PROC
    mov trival1, 0
    mov trival2, 0
    mov trival3, 0
    
    add xicoord,20
    d3:
        cmp trival2, 10
        je d4
        mov ah,0ch
        mov al, 4
        mov cx, xicoord
		sub cx,3
        mov dx, yicoord
		add dx,8
        int 10h
        dec xicoord
        dec yicoord
        inc trival2
    jmp d3


    d4:
    cmp trival3, 10
        je J99
        mov ah,0ch
        mov al, 5
        mov cx, xicoord
		sub cx,3
        mov dx, yicoord
		add dx,8
        int 10h
        dec xicoord
        inc yicoord
        inc trival3
    jmp d4

	j99:
		mov trival1,0
	J9:
		cmp trival1,10
		je J101
		mov ah,0Ch
		mov al,6
		mov cx,xicoord
		sub cx,3
		mov dx,yicoord
		add dx,8
		int 10h
		inc xicoord
		inc yicoord
		inc trival1
	jmp J9

	J101:
		mov trival1,0
	J10:
		cmp trival1,10
		je t3
		mov ah,0Ch
		mov al,12
		mov cx,xicoord
		sub cx,3
		mov dx,yicoord
		add dx,8
		int 10h
		inc xicoord
		dec yicoord
		inc trival1
	jmp J10
		
    t3:
        mov trival1, 0
        mov trival2,0 
        mov trival3, 0
        sub xicoord,20
        ret 
Diamond ENDP
;======================================check index============================================
checkindex proc

.if xicoord >90 && xicoord < 115 
	mov si, 0	
.elseif xicoord >115 && xicoord < 140 
	mov si, 1
.elseif xicoord >140 && xicoord < 165 
	mov si, 2
.elseif xicoord >165 && xicoord < 190 
	mov si, 3
.elseif xicoord >190 && xicoord < 215
	mov si, 4
.elseif xicoord >215 && xicoord < 240 
	mov si, 5
.elseif xicoord >240 && xicoord < 265 
	mov si, 6
.endif

.if yicoord >20 && yicoord <45
	mov bx, 0
.elseif yicoord >45 && yicoord < 70
	mov bx, 7
.elseif yicoord > 70 && yicoord < 95
	mov bx, 14
.elseif yicoord > 95 && yicoord < 120
	mov bx, 21
.elseif yicoord > 120 && yicoord < 145
	mov bx, 28
.elseif yicoord > 145 && yicoord < 170
	mov bx, 35
.elseif yicoord > 170 && yicoord < 195
	mov bx, 42
.endif


add si, bx
ret
checkindex endp

;==============================================poof a block================================
.if si>= 0 &&  si< 7
	mov yicoord, 20
	mov yfcoord, 45
.elseif si>6 && si <14
	mov yicoord, 45
	mov yfcoord, 70
.elseif si> 13 &&  si < 21
	mov yicoord, 70
	mov yfcoord, 95
.elseif si>20 && si < 28
	mov yicoord, 95
	mov yfcoord, 120
.elseif si > 27 && si < 35
	mov yicoord, 120
	mov yfcoord, 145
.elseif si>34 && si < 42
	mov yicoord, 145
	mov yfcoord, 170
.elseif si > 41 && si < 49
	mov yicoord, 170
	mov yfcoord, 195
.endif

.if yicoord >20 && yicoord <45
	mov xicoord, 90
	mov xfcoord, 115
.elseif yicoord >45 && yicoord < 70
	mov xicoord, 115
	mov xfcoord, 140
.elseif yicoord > 70 && yicoord < 95
	mov xicoord, 140
	mov xfcoord, 165
.elseif yicoord > 95 && yicoord < 120
	mov xicoord, 165
	mov xfcoord, 190
.elseif yicoord > 120 && yicoord < 145
	mov xicoord, 190
	mov xfcoord, 215
.elseif yicoord > 145 && yicoord < 170
	mov xicoord, 215
	mov xfcoord, 240
.elseif yicoord > 170 && yicoord < 195
	mov xicoord, 240
	mov xfcoord, 265
.endif
;==============================================delay func==============================================================================
delay proc
push cx
mov cx,10000
del: 
	dec cx
LOOP del
pop cx
ret
delay endp

delay2 proc
push cx
mov cx,65000
del1: 
	dec cx
cmp cx,0
jne del1
pop cx
ret
delay2 endp

;===================================================random generator====================================
random proc
call delay
call delay
push ax
call delay
call delay
call delay
push bx
call delay
call delay
call delay
push dx

call delay
call delay
mov ax,0

call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call delay

mov ah,0
int 1Ah
mov bh,33h
mov al,dl
mov bl,6
div bl
mov RNum,ah

pop dx
pop bx
pop ax
ret
random endp

;===========================================================plus candy proc======================
plus proc
 push xicoord
 push yicoord
 add yicoord,10

 mov trival1,0
 mov ah, 0ch
 mov dx, yicoord	
 mov color, 11
 mov al,color
 plus1:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10h
	inc xicoord
	inc trival1
	cmp trival1,15
 jne plus1
 mov trival1,0
 plus2:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec yicoord
	inc trival1
	cmp trival1,5
 jne plus2
 mov trival1,0
 plus3:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec xicoord
	inc trival1
	cmp trival1,15
 jne plus3
 mov trival1,0
 plus4:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	inc trival1
	cmp trival1,5
 jne plus4
 add xicoord,5
 add yicoord,5
 mov trival1,0
 plus5:
	mov ah, 0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec yicoord
	inc trival1
	cmp trival1,15
 jne plus5
 mov trival1,0
 plus6:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc xicoord
	inc trival1
	cmp trival1,5
 jne plus6
 mov trival1,0
 plus7:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	inc trival1
	cmp trival1,15
 jne plus7
 mov trival1,0
 plus8:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec xicoord
	inc trival1
	cmp trival1,5
 jne plus8
 pop yicoord
 pop xicoord
ret
plus endp

;----------------------------------------------draw melon--------------------------------------------
melon proc
 push xicoord
 push yicoord

 add yicoord,12
 add xicoord,3
 mov trival1,0
 mov al,13
 melon1:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	inc xicoord
	inc trival1
	cmp trival1,5
 jne melon1
 mov trival1,0
 melon2:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc xicoord
	dec yicoord
	inc trival1
	cmp trival1,5
 jne melon2
 mov trival1,0
 melon3:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec yicoord
	inc trival1
	cmp trival1,10
 jne melon3
 mov trival1,0
 melon4:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec yicoord
	dec xicoord
	inc trival1
	cmp trival1,5
 jne melon4
 mov trival1,0
 melon5:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	dec xicoord
	inc trival1
	cmp trival1,5
 jne melon5
  mov trival1,0
 melon6:
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	inc trival1
	cmp trival1,10
 jne melon6
 mov trival1,0
 pop yicoord
 pop xicoord
 ret
melon endp
;----------------------randomizer
; plus= 1, melon =2, square = 3, diamond = 4, cbomb = 5, whitebomb =6
randomizer proc
mov ah,0ch
	.if RNum==0
		call plus
		mov ArrayCandies[si], 1
		jmp work
	.elseif RNum==1
		call melon
		mov ArrayCandies[si], 2
		jmp work
	.elseif RNum==2
		call Square
		mov ArrayCandies[si],3
		jmp work
	.elseif RNum==3
		call Diamond
		mov ArrayCandies[si], 4
		jmp work
	.elseif RNum == 4
		call Cbomb
		mov ArrayCandies[si], 5
		jmp work
	.elseif RNum ==5
		jmp forGodsSakeWork
	.endif
	forGodsSakeWork:
	call random
	.if RNum==0
		call whitebomb
		mov ArrayCandies[si],6
	.elseif RNum==1
		call melon
		mov ArrayCandies[si], 2
	.elseif RNum==2
		call Square
		mov ArrayCandies[si], 3
	.elseif RNum==3
		call Diamond
		mov ArrayCandies[si], 4
	.elseif RNum == 4
		call cbomb
		mov ArrayCandies[si], 5
	.elseif RNum ==5
		call plus
		mov ArrayCandies[si], 1
	.endif
	work:
	ret
randomizer endp

;-------------------------------------------whitebomb---------

whitebomb proc

mov color, 7
call box
ret
whitebomb endp
;----------------------------------------------bomb--------------------------------
Cbomb proc
 push xicoord
 push yicoord
 add xicoord,7
 add yicoord,7
 mov trival1,0
 mov al,5
 cb1:
	mov al,5
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec yicoord
	inc xicoord
	inc trival1
	cmp trival1,10
jne cb1 
 mov trival1,0
 sub xicoord,10
 add yicoord,10
 cb2:
	mov al,4
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	inc trival1
	cmp trival1,10
 jne cb2
 mov trival1,0
 sub yicoord,10
 cb3:
	mov al,10
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc xicoord
	inc trival1
	cmp trival1,10
 jne cb3
 mov trival1,0
 sub xicoord,10
 cb4:
 	mov al,12
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc xicoord
	inc yicoord
	inc trival1
	cmp trival1,10
 jne cb4
 mov trival1,0
 sub xicoord,10
 sub yicoord,10
 cb5:
	mov al,11
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec yicoord
	inc trival1
	cmp trival1,10
 jne cb5
 mov trival1,0
 add yicoord,10
 cb6:
	mov al,2
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	inc yicoord
	dec xicoord
	inc trival1
	cmp trival1,10
 jne cb6
  mov trival1,0
 add xicoord,10
 sub yicoord,10
 cb7:
	mov al,1
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec xicoord
	inc trival1
	cmp trival1,10
 jne cb7
 mov trival1,0
 add xicoord,10
 cb8:
	mov al, 8
	mov ah,0ch
	mov cx,xicoord
	mov dx,yicoord
	int 10H
	dec xicoord
	dec yicoord
	inc trival1
	cmp trival1,10
 jne cb8
 mov trival1,0

 pop yicoord
 pop xicoord
 ret
Cbomb endp


DispArr proc
 mov pls,0
 mov ax,2
 int 33h
 push si
 push xicoord
 push xfcoord
 push yicoord
 push yfcoord
 push cx

 mov si,0
 mov Indexer,49
 mov xicoord,95
 mov xfcoord,110
 mov yicoord,25
 mov yfcoord,40
 mov CarrDisp,0
 ; plus= 1, melon =2, square = 3, diamond = 4, cbomb = 5, whitebomb =6


 dispArray: 
	push xicoord
 	push xfcoord
 	push yicoord
 	push yfcoord
	sub xicoord,4
	add xfcoord,5
	sub yicoord,4
	add yfcoord,5
	mov color,0
	call box
	pop yfcoord
 	pop yicoord
 	pop xfcoord
 	pop xicoord
	mov ah,0ch
	.if ArrayCandies[si]==1
		call plus
	.elseif ArrayCandies[si]==2
		call melon
	.elseif ArrayCandies[si]==3
		call Square
	.elseif ArrayCandies[si]==4
		call Diamond
	.elseif ArrayCandies[si]==5
		call cbomb
	.elseif ArrayCandies[si]==6
		call whitebomb
	.endif
	inc si
	inc CarrDisp
	.if CarrDisp >= 7
		mov xicoord,95
 		mov xfcoord,110
		add yicoord,25
		add yfcoord,25
		mov CarrDisp,0
	.elseif CarrDisp<7
		add xicoord,25
		add xfcoord,25
	.endif
 dec Indexer
 cmp Indexer,0
 jne dispArray

 pop cx
 pop yfcoord
 pop yicoord
 pop xfcoord
 pop xicoord
 pop si
 mov ax,1
 int 33h
 ret
DispArr endp

DispArr2 proc
mov pls,0
 mov ax,2
 int 33h
 push si
 push xicoord
 push xfcoord
 push yicoord
 push yfcoord
 push cx

 mov si,0
 mov Indexer,49
 mov xicoord,95
 mov xfcoord,110
 mov yicoord,25
 mov yfcoord,40
 mov CarrDisp,0


dispArray2: 
	push xicoord
 	push xfcoord
 	push yicoord
 	push yfcoord
	sub xicoord,4
	add xfcoord,5
	sub yicoord,4
	add yfcoord,5
	mov color,0
	call box
	pop yfcoord
 	pop yicoord
 	pop xfcoord
 	pop xicoord
	mov ah,0ch
	.if si==0 || si==3 || si==6 || si==7 || si==13 || si == 21 || si==27 || si==35 || si==41 ||si==42||si==45||si==48
	call empty
	.elseif ArrayCandies[si]==1
		call plus
	.elseif ArrayCandies[si]==2
		call melon
	.elseif ArrayCandies[si]==3
		call Square
	.elseif ArrayCandies[si]==4
		call Diamond
	.elseif ArrayCandies[si]==5
		call cbomb
	.elseif ArrayCandies[si]==6
		call whitebomb
	.endif
	inc si
	inc CarrDisp
	.if CarrDisp >= 7
		mov xicoord,95
 		mov xfcoord,110
		add yicoord,25
		add yfcoord,25
		mov CarrDisp,0
	.elseif CarrDisp<7
		add xicoord,25
		add xfcoord,25
	.endif
 dec Indexer
 cmp Indexer,0
 jne dispArray2

 pop cx
 pop yfcoord
 pop yicoord
 pop xfcoord
 pop xicoord
 pop si
 mov ax,1
 int 33h
 ret
DispArr2 endp



DispArr3 proc
mov pls,0
 mov ax,2
 int 33h
 push si
 push xicoord
 push xfcoord
 push yicoord
 push yfcoord
 push cx

 mov si,0
 mov Indexer,49
 mov xicoord,95
 mov xfcoord,110
 mov yicoord,25
 mov yfcoord,40
 mov CarrDisp,0

 dispArray3: 
	push xicoord
 	push xfcoord
 	push yicoord
 	push yfcoord
	sub xicoord,4
	add xfcoord,5
	sub yicoord,4
	add yfcoord,5
	mov color,0
	call box
	pop yfcoord
 	pop yicoord
 	pop xfcoord
 	pop xicoord
	mov ah,0ch
	.if si==3 || si==10 || si==17 || si==25 || si==31 || si == 38 || si==22 || si==23 ||si==24||si==25||si==26||si==27|| si==21 || si ==45
		call empty
	.elseif ArrayCandies[si]==1
		call plus
	.elseif ArrayCandies[si]==2
		call melon
	.elseif ArrayCandies[si]==4
		call Diamond
	.elseif ArrayCandies[si]==3
		call Square
	.elseif ArrayCandies[si]==5
		call cbomb
	.elseif ArrayCandies[si]==6
		call whitebomb
	.endif
	inc si
	inc CarrDisp
	.if CarrDisp >= 7
		mov xicoord,95
 		mov xfcoord,110
		add yicoord,25
		add yfcoord,25
		mov CarrDisp,0
	.elseif CarrDisp<7
		add xicoord,25
		add xfcoord,25
	.endif
 dec Indexer
 cmp Indexer,0
 jne dispArray3

 pop cx
 pop yfcoord
 pop yicoord
 pop xfcoord
 pop xicoord
 pop si
 mov ax,1
 int 33h
 ret
DispArr3 endp

;mouse click
mouseC PROC
	call delay2
	call delay2
	call delay2
	mov ax,0
	mouseclick:
	call Ccombo
	call FixArr
	.if pls ==1
		call DispArr
	.endif
	mov ax, 5
	int 33h
	cmp ax, 1
	jne mouseclick
	mov ax,3
	mov xicoord,cx ; X-position, x co-ordinates are stored in variable x
	mov yicoord,dx ; Y-position, y co-ordinates are stored in variable y
	int 33h
	SHR xicoord,1
	ret
mouseC ENDP


mouseC2 PROC
	call delay2
	call delay2
	call delay2
	mov ax,0
	mouseclick2:
	call Ccombo2
	call FixArr
	.if pls ==1
		call DispArr2
	.endif
	mov ax, 5
	int 33h
	cmp ax, 1
	jne mouseclick2
	mov ax,3
	mov xicoord,cx ; X-position, x co-ordinates are stored in variable x
	mov yicoord,dx ; Y-position, y co-ordinates are stored in variable y
	int 33h
	SHR xicoord,1
	ret
mouseC2 ENDP

mouseC3 PROC
	call delay2
	call delay2
	call delay2
	mov ax,0
	mouseclick3:
	call Ccombo3
	call FixArr
	.if pls ==1
		call DispArr3
	.endif
	mov ax, 5
	int 33h
	cmp ax, 1
	jne mouseclick3
	mov ax,3
	mov xicoord,cx ; X-position, x co-ordinates are stored in variable x
	mov yicoord,dx ; Y-position, y co-ordinates are stored in variable y
	int 33h
	SHR xicoord,1
	ret
mouseC3 ENDP
;Finds combos
Ccombo PROC
	push ax
	push cx
	push si
	push bx

	mov ax,0
	mov cx,49
	mov di, offset ArrayCandies
	mov si,0
		C2:
			mov ax,0
			mov bx,0
			mov ax,si
			mov bl,7
			div bl
			mov ComboCheck,ah
			mov ComboCheck2,al
			mov ah,ArrayCandies[si+1]
			mov al,ArrayCandies[si+2]
			mov bh,ArrayCandies[si+3]
			.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ArrayCandies[si]==bh && ComboCheck<4
				mov pls,1
				push si
				mov bx,si
				sub bx,7
				.while bx>=0 && si>6
					mov al,ArrayCandies[si-7]
					mov ArrayCandies[si],al
					mov al, ArrayCandies[si-6]
					mov ArrayCandies[si+1],al
					mov al, ArrayCandies[si-5]
					mov ArrayCandies[si+2],al
					mov al, ArrayCandies[si-4]
					mov ArrayCandies[si+3],al
					sub si,7
					mov bx,si
				.endw
				call random
				mov al,RNum
				mov ArrayCandies[si],al
				call random
				mov al,RNum
				mov ArrayCandies[si+1],al
				call random
				mov al,RNum
				mov ArrayCandies[si+2],al
				call random
				mov al,RNum
				mov ArrayCandies[si+3],al
				pop si
				add score,4
			.endif


			.if si < 28
				mov ah,ArrayCandies[si+7]
				mov al,ArrayCandies[si+14]
				mov bh, ArrayCandies[si+21]
				.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ArrayCandies[si]==bh && ComboCheck2<4
					mov pls,1
					push si
					mov bx,si
					sub bx,7
					.while bx>=0 && si>6
						mov ax,si
						sub ax,28
						.if ax >= 0 && si >27
							mov al,ArrayCandies[si-28]
							mov ArrayCandies[si],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si],al
						.endif
						mov ax,si
						sub ax,21
						.if ax>=0 && si>20
							mov al, ArrayCandies[si-21]
							mov ArrayCandies[si+7],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+7],al
						.endif
						mov ax,si
						sub ax,14
						.if ax>=0 && si>13
							mov al, ArrayCandies[si-14]
							mov ArrayCandies[si+14],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+14],al
						.endif
						mov ax,si
						sub ax,7
						.if ax>=0 && si>6
							mov al, ArrayCandies[si-7]
							mov ArrayCandies[si+21],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+21],al
						.endif
						sub si,7
						mov bx,si
					.endw
					call random
					mov al,RNum
					mov ArrayCandies[si],al
					.if si<6
					push cx
						call random
						mov al,RNum
						mov ArrayCandies[si+7],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
						call random
						mov al,RNum
						mov ArrayCandies[si+21],al
					pop cx
					.endif
					pop si
					add score,4
				.endif

			.endif

			mov ah,ArrayCandies[si+1]
			mov al,ArrayCandies[si+2]
			mov bh,ArrayCandies[si+3]
			.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ComboCheck<5
				mov pls,1
				push si
				mov bx,si
				sub bx,7
				.while bx>=0 && si>6
					mov al,ArrayCandies[si-7]
					mov ArrayCandies[si],al
					mov al, ArrayCandies[si-6]
					mov ArrayCandies[si+1],al
					mov al, ArrayCandies[si-5]
					mov ArrayCandies[si+2],al
					sub si,7
					mov bx,si
				.endw
				call random
				mov al,RNum
				mov ArrayCandies[si],al
				call random
				mov al,RNum
				mov ArrayCandies[si+1],al
				call random
				mov al,RNum
				mov ArrayCandies[si+2],al
				pop si
				add score,3
			.endif
			
			.if si < 35
				mov ah,ArrayCandies[si+7]
				mov al,ArrayCandies[si+14]
				.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ComboCheck2<5
					mov pls,1
					push si
					mov bx,si
					sub bx,7
					.while bx>=0 && si>6
						mov ax,si
						sub ax,21
						.if ax >= 0 && si >26
							mov al,ArrayCandies[si-21]
							mov ArrayCandies[si],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si],al
						.endif
						mov ax,si
						sub ax,14
						.if ax>=0 && si>13
							mov al, ArrayCandies[si-14]
							mov ArrayCandies[si+7],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+7],al
						.endif
						mov ax,si
						sub ax,7
						.if ax>=0 && si>6
							mov al, ArrayCandies[si-7]
							mov ArrayCandies[si+14],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+14],al
						.endif
						sub si,7
						mov bx,si
					.endw
					call random
					mov al,RNum
					mov ArrayCandies[si],al
					.if si<6
					push cx
						call random
						mov al,RNum
						mov ArrayCandies[si+7],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
					pop cx
					.endif
					pop si
					add score,3
				.endif

			.endif
			inc si
			cmp si,48
		jne C2


	pop bx
	pop si
	pop cx
	pop ax
	ret
Ccombo ENDP

Ccombo2 PROC
	push ax
	push cx
	push si
	push bx

	mov ax,0
	mov cx,49
	mov di, offset ArrayCandies
	mov si,0
		C21:
			mov ax,0
			mov bx,0
			mov ax,si
			mov bl,7
			div bl
			mov ComboCheck,ah
			mov ComboCheck2,al
			mov ah,ArrayCandies[si+1]
			mov al,ArrayCandies[si+2]
			mov bh,ArrayCandies[si+3]
			.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ArrayCandies[si]==bh && ComboCheck<4
				mov pls,1
				push si
				mov bx,si
				sub bx,7
				.while bx>=0 && si>6
					mov al,ArrayCandies[si-7]
					mov ArrayCandies[si],al
					mov al, ArrayCandies[si-6]
					mov ArrayCandies[si+1],al
					mov al, ArrayCandies[si-5]
					mov ArrayCandies[si+2],al
					mov al, ArrayCandies[si-4]
					mov ArrayCandies[si+3],al
					sub si,7
					mov bx,si
				.endw
				call random
				mov al,RNum
				mov ArrayCandies[si],al
				call random
				mov al,RNum
				mov ArrayCandies[si+1],al
				call random
				mov al,RNum
				mov ArrayCandies[si+2],al
				call random
				mov al,RNum
				mov ArrayCandies[si+3],al
				pop si
				add score,4
			.endif


			.if si < 28
				mov ah,ArrayCandies[si+7]
				mov al,ArrayCandies[si+14]
				mov bh, ArrayCandies[si+21]
				.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ArrayCandies[si]==bh && ComboCheck2<4
					mov pls,1
					push si
					mov bx,si
					sub bx,7
					.while bx>=0 && si>6
						mov ax,si
						sub ax,28
						.if ax >= 0 && si >27
							mov al,ArrayCandies[si-28]
							mov ArrayCandies[si],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si],al
						.endif
						mov ax,si
						sub ax,21
						.if ax>=0 && si>20
							mov al, ArrayCandies[si-21]
							mov ArrayCandies[si+7],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+7],al
						.endif
						mov ax,si
						sub ax,14
						.if ax>=0 && si>13
							mov al, ArrayCandies[si-14]
							mov ArrayCandies[si+14],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+14],al
						.endif
						mov ax,si
						sub ax,7
						.if ax>=0 && si>6
							mov al, ArrayCandies[si-7]
							mov ArrayCandies[si+21],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+21],al
						.endif
						sub si,7
						mov bx,si
					.endw
					call random
					mov al,RNum
					mov ArrayCandies[si],al
					.if si<6
					push cx
						call random
						mov al,RNum
						mov ArrayCandies[si+7],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
						call random
						mov al,RNum
						mov ArrayCandies[si+21],al
					pop cx
					.endif
					pop si
					add score,4
				.endif

			.endif

			mov ah,ArrayCandies[si+1]
			mov al,ArrayCandies[si+2]
			mov bh,ArrayCandies[si+3]
			.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ComboCheck<5
				mov pls,1
				push si
				mov bx,si
				sub bx,7
				.while bx>=0 && si>6
					mov al,ArrayCandies[si-7]
					mov ArrayCandies[si],al
					mov al, ArrayCandies[si-6]
					mov ArrayCandies[si+1],al
					mov al, ArrayCandies[si-5]
					mov ArrayCandies[si+2],al
					sub si,7
					mov bx,si
				.endw
				call random
				mov al,RNum
				mov ArrayCandies[si],al
				call random
				mov al,RNum
				mov ArrayCandies[si+1],al
				call random
				mov al,RNum
				mov ArrayCandies[si+2],al
				pop si
				add score,3
			.endif
			
			.if si < 35
				mov ah,ArrayCandies[si+7]
				mov al,ArrayCandies[si+14]
				.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ComboCheck2<5
					mov pls,1
					push si
					mov bx,si
					sub bx,7
					.while bx>=0 && si>6
						mov ax,si
						sub ax,21
						.if ax >= 0 && si >26
							mov al,ArrayCandies[si-21]
							mov ArrayCandies[si],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si],al
						.endif
						mov ax,si
						sub ax,14
						.if ax>=0 && si>13
							mov al, ArrayCandies[si-14]
							mov ArrayCandies[si+7],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+7],al
						.endif
						mov ax,si
						sub ax,7
						.if ax>=0 && si>6
							mov al, ArrayCandies[si-7]
							mov ArrayCandies[si+14],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+14],al
						.endif
						sub si,7
						mov bx,si
					.endw
					call random
					mov al,RNum
					mov ArrayCandies[si],al
					.if si<6
					push cx
						call random
						mov al,RNum
						mov ArrayCandies[si+7],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
					pop cx
					.endif
					pop si
					add score,3
				.endif

			.endif
			inc si
			cmp si,48
		jne C21


	pop bx
	pop si
	pop cx
	pop ax
	ret
Ccombo2 ENDP


Ccombo3 PROC
	push ax
	push cx
	push si
	push bx

	mov ax,0
	mov cx,49
	mov di, offset ArrayCandies
	mov si,0
		C31:
			mov ax,0
			mov bx,0
			mov ax,si
			mov bl,7
			div bl
			mov ComboCheck,ah
			mov ComboCheck2,al
			mov ah,ArrayCandies[si+1]
			mov al,ArrayCandies[si+2]
			mov bh,ArrayCandies[si+3]
			.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ArrayCandies[si]==bh && ComboCheck<4
				mov pls,1
				push si
				mov bx,si
				sub bx,7
				.while bx>=0 && si>6
					mov al,ArrayCandies[si-7]
					mov ArrayCandies[si],al
					mov al, ArrayCandies[si-6]
					mov ArrayCandies[si+1],al
					mov al, ArrayCandies[si-5]
					mov ArrayCandies[si+2],al
					mov al, ArrayCandies[si-4]
					mov ArrayCandies[si+3],al
					sub si,7
					mov bx,si
				.endw
				call random
				mov al,RNum
				mov ArrayCandies[si],al
				call random
				mov al,RNum
				mov ArrayCandies[si+1],al
				call random
				mov al,RNum
				mov ArrayCandies[si+2],al
				call random
				mov al,RNum
				mov ArrayCandies[si+3],al
				pop si
				add score,4
			.endif


			.if si < 28
				mov ah,ArrayCandies[si+7]
				mov al,ArrayCandies[si+14]
				mov bh, ArrayCandies[si+21]
				.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ArrayCandies[si]==bh && ComboCheck2<4
					mov pls,1
					push si
					mov bx,si
					sub bx,7
					.while bx>=0 && si>6
						mov ax,si
						sub ax,28
						.if ax >= 0 && si >27
							mov al,ArrayCandies[si-28]
							mov ArrayCandies[si],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si],al
						.endif
						mov ax,si
						sub ax,21
						.if ax>=0 && si>20
							mov al, ArrayCandies[si-21]
							mov ArrayCandies[si+7],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+7],al
						.endif
						mov ax,si
						sub ax,14
						.if ax>=0 && si>13
							mov al, ArrayCandies[si-14]
							mov ArrayCandies[si+14],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+14],al
						.endif
						mov ax,si
						sub ax,7
						.if ax>=0 && si>6
							mov al, ArrayCandies[si-7]
							mov ArrayCandies[si+21],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+21],al
						.endif
						sub si,7
						mov bx,si
					.endw
					call random
					mov al,RNum
					mov ArrayCandies[si],al
					.if si<6
					push cx
						call random
						mov al,RNum
						mov ArrayCandies[si+7],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
						call random
						mov al,RNum
						mov ArrayCandies[si+21],al
					pop cx
					.endif
					pop si
					add score,4
				.endif

			.endif

			mov ah,ArrayCandies[si+1]
			mov al,ArrayCandies[si+2]
			mov bh,ArrayCandies[si+3]
			.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ComboCheck<5
				mov pls,1
				push si
				mov bx,si
				sub bx,7
				.while bx>=0 && si>6
					mov al,ArrayCandies[si-7]
					mov ArrayCandies[si],al
					mov al, ArrayCandies[si-6]
					mov ArrayCandies[si+1],al
					mov al, ArrayCandies[si-5]
					mov ArrayCandies[si+2],al
					sub si,7
					mov bx,si
				.endw
				call random
				mov al,RNum
				mov ArrayCandies[si],al
				call random
				mov al,RNum
				mov ArrayCandies[si+1],al
				call random
				mov al,RNum
				mov ArrayCandies[si+2],al
				pop si
				add score3,3
			.endif
			
			.if si < 35
				mov ah,ArrayCandies[si+7]
				mov al,ArrayCandies[si+14]
				.if ArrayCandies[si]==ah && ArrayCandies[si]== al && ComboCheck2<5
					mov pls,1
					push si
					mov bx,si
					sub bx,7
					.while bx>=0 && si>6
						mov ax,si
						sub ax,21
						.if ax >= 0 && si >26
							mov al,ArrayCandies[si-21]
							mov ArrayCandies[si],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si],al
						.endif
						mov ax,si
						sub ax,14
						.if ax>=0 && si>13
							mov al, ArrayCandies[si-14]
							mov ArrayCandies[si+7],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+7],al
						.endif
						mov ax,si
						sub ax,7
						.if ax>=0 && si>6
							mov al, ArrayCandies[si-7]
							mov ArrayCandies[si+14],al
						.else
							push cx
							call random
							pop cx
							mov al,RNum
							mov ArrayCandies[si+14],al
						.endif
						sub si,7
						mov bx,si
					.endw
					call random
					mov al,RNum
					mov ArrayCandies[si],al
					.if si<6
					push cx
						call random
						mov al,RNum
						mov ArrayCandies[si+7],al
						call random
						mov al,RNum
						mov ArrayCandies[si+14],al
					pop cx
					.endif
					pop si
					add score,3
				.endif

			.endif
			inc si
			cmp si,48
		jne C31


	pop bx
	pop si
	pop cx
	pop ax
	ret
Ccombo3 ENDP


FixArr proc
push cx
push si
	mov cx, 48
	mov si, 0
	Lmaopls:
		.if ArrayCandies[si]!=1 && ArrayCandies[si]!=2 && ArrayCandies[si]!=3 && ArrayCandies[si]!=4 && ArrayCandies[si]!=5 && ArrayCandies[si]!=6
			mov pls,1
			push cx
			call random
			pop cx
			push ax
			mov ax,0
			mov al,RNum
			mov ArrayCandies[si],al
			pop ax
		.endif
		inc si
		dec cx
	cmp cx,0
	jne Lmaopls
pop si
pop cx
ret
FixArr endp


;description
GetBombed PROC
	push si
	push cx
	push bx
		mov si,0
		mov cx,48

		Loopppp:
			mov bl,ArrayCandies[si]
			cmp bl,al
			je getRid
			inc si
			dec cx
			cmp cx,0
		jne Loopppp
		jmp endoo
		getRid:
			push cx
			push bx
			call random
			mov bh,RNum
			mov ArrayCandies[si],bh
			add score,1
			pop bx
			pop cx
		jmp Loopppp
	endoo:	
	call FixArr
	pop bx
	pop cx	
	pop si
	ret
GetBombed ENDP

filetext proc
 push dx
 mov  ah, 3ch
 mov  cx, 0
 mov  dx, offset filename
 int  21h

 mov handler,ax
 
 mov  ah, 40h
 mov  bx, handler
 mov  cx, lengthof inputName ;STRING LENGTH.
 mov  dx, offset inputName
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, 5  ;STRING LENGTH.
 mov  dx, 10
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, lengthof strr1 ;STRING LENGTH.
 mov  dx, offset strr1
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, lengthof score ;STRING LENGTH.
 mov  dx, offset score
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, 5  ;STRING LENGTH.
 mov  dx, 0dh
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, length strr2  ;STRING LENGTH.
 mov  dx, offset strr2
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, lengthof score2  ;STRING LENGTH.
 ;mov  dx, offset score2
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, 5  ;STRING LENGTH.
 mov  dx, 0dh
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, lengthof strr3 ;STRING LENGTH.
 mov  dx, offset strr3
 int  21h

 mov  ah, 40h
 mov  bx, handler
 mov  cx, length score3 ;STRING LENGTH.
 mov  dx, offset score3
 int  21h


 mov  ah, 3eh
 mov  bx, bx
 int  21h 

 pop dx
 ret
fileText endp


empty proc
	mov color, 0
	call box
	ret
empty endp

end main

