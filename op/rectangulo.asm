

opRectanguloStatic:

    mov 	eax, mbase
	call 	sprint
	
	mov 	eax, valor
	call	scanf
	
	mov 	eax, valor
	call	atoi

	push 	eax
	push 	eax
	
	mov 	eax, maltura
	call	sprint

	mov 	eax, valor
	call	scanf
	
	mov 	eax, valor	
	call 	atoi

	pop	ebx
	push 	eax

	mul	ebx
	push 	eax

	mov 	eax, marea
	call	sprint
	
	pop	eax
	call	iprintLF

	pop	ebx
	pop	eax
	
	add	eax,ebx

	mov 	eax,eax
	mov 	ebx,2
	mul	ebx
	push 	eax
	
	mov 	eax, mperimetro
	call	sprint
	
	pop	eax
	call 	iprintLF

    jmp   opNext
