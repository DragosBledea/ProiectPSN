.386
.model flat, stdcall
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;includem biblioteci, si declaram ce functii vrem sa importam
includelib msvcrt.lib
extern exit: proc
extern scanf: proc
extern printf: proc
extern fopen: proc
extern fprintf: proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;declaram simbolul start ca public - de acolo incepe executia
public start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;sectiunile programului, date, respectiv cod
.data
;aici declaram date
formats DB "%s",0
formatn DB "%d",0
formatc DB "%c",0
nume_fisier DB "fisier.txt",0
mode DB "w",0
fisier DD 0
n DD 0
sir DB 20 dup(0)
.code
start:

	push offset mode
	push offset nume_fisier
	call fopen
	add esp, 8
	mov edi, eax 
	
	push offset sir
	push offset formats
	call scanf
	add esp,8
	
	
	mov esi,edi
	mov edi,0
	
	etloop:
	cmp sir[edi],0
	je afara
	inc edi
	inc n
	jmp etloop
	
	afara:
	mov edi,esi
	mov ecx,n
	mov esi,n
	push n
	
	etloop2:
	
	mov eax,0
	mov al,sir[esi]
	
	push eax
	push offset formatc
	push edi
	call fprintf
	add esp,12
	
	mov ecx,esi
	dec esi
	loop etloop2
	
	;terminarea programului
	push 0
	call exit
end start
