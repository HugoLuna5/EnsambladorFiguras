
opPrismaStatic:

    

   	mov 	eax, mbase 
	call 	sprint

	mov    eax, base 
	call    scanf
   
	mov 	eax, maltura 
	call 	sprint
	
	mov 	eax, altura
	call	scanf


	mov 	eax, mprof
	call 	sprint

	mov     eax, profundidad 
	call    scanf

	;Area de la figura
	mov eax, altura
	call atoi

	mov ebx, eax

	mov eax, profundidad
	call atoi
	mul ebx

	mov	ebx,ebx
	mov	ebx,4
	mul 	ebx	
	push eax



	mov eax, base
	call atoi
	mov ebx, eax
	
	mov eax, altura
	call atoi
	mul ebx

	mov	ebx,ebx
	mov	ebx,2
	mul	ebx

	mov	ebx,eax
	pop	eax

	add	eax,ebx
	push	eax

	mov eax, marea
	call sprint

	pop eax
	call iprintLF


	;Perimetro de la figura
	mov eax, base
	call atoi
	mov ebx, 4
	mul ebx
	push eax

	mov eax, altura
	call atoi
	mov ebx, 4
	mul ebx

	push eax

	mov eax, profundidad
	call atoi
	mov ebx, 4
	mul ebx
	mov	ebx,eax
	pop	eax
	add	eax,ebx
	push	eax

	mov eax, mperimetro
	call sprint
    
	pop	eax
	mov	ebx,eax
	pop	eax
	add	eax,ebx
	call iprintLF


	;Volumen de la figura
	mov eax, base
	call atoi
	mov ebx, eax

	mov eax, profundidad
	call atoi

	mul ebx
	mov ebx, eax

	mov eax, altura
	call atoi

	mul ebx

	push eax

	mov eax, mvolumen
	call sprint

	pop eax
	call iprintLF

    jmp   opNext