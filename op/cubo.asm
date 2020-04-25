

opcuboStatic:
    mov 	eax, mbase
	call 	sprint
	
	mov 	eax, valor
	call	scanf
	
	mov 	eax, valor
	call	atoi
	push 	eax
	push 	eax
	push 	eax
	push 	eax

	mul	eax

	mov	eax,eax
	mov	ebx,6
	mul	ebx
	
	push eax

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
	
	mov	eax,eax
	mov	ebx,6
	mul	ebx
	push 	eax
	
	mov 	eax, mperimetro
	call	sprint
	
	pop	eax
	call 	iprintLF
	pop	ebx
	pop	eax
	
	mul	eax

	mov 	eax,eax
	mov 	ebx,ebx
	mul	ebx

	push 	eax

	mov 	eax, mvolumen
	call	sprint
	
	pop	eax
	call	iprintLF	


    jmp   opNext