
opPrismaStatic:

    mov 	eax, maltura ;Mostrar mensaje
	call 	sprint

    mov    eax, altura ; guardar dato en una variable
    call    scanf

    ;mov     eax, altura
    ;call    atoi

    ;push    eax     ; guardar altura

   
    mov 	eax, mbase ;Mostrar mensaje
	call 	sprint
	
	mov 	eax, base ; guardar dato en una variable
	call	scanf

    ;mov     eax, base 
    ;call    atoi

    ;push eax        ; guardar base

    mov 	eax, mprof ;Mostrar mensaje
	call 	sprint

    mov     eax, profundidad ; guardar dato en una variable
    call    scanf

    ;mov     eax, profundidad
    ;call    atoi

    ;push    eax     ; guardar la profundidad

    

    ; First op - Calculate Area

    ;Formula A = (base.profundidad + base.altura + profundidad.altura) * 2
    ;porfundidad : b = 2
    ;altura : h = 6
    ;base : a = 4


    ; a.b = c
    mov eax, base
    call atoi

    mov ebx, eax

    mov eax, profundidad
    call atoi

    mul ebx
    push eax



    ;a.h = c
    mov eax, base
    call atoi
    mov ebx, eax

    mov eax, altura
    call atoi
    mul ebx
    push eax


    ;b.h = c
    mov eax, profundidad
    call atoi
    mov ebx, eax

    mov eax, altura
    call atoi

    mul ebx
    push eax


    pop eax
    mov ecx, eax

    mov ebx, ecx
    pop eax

    add eax, ebx

    mov ebx, eax
    pop eax

    add eax, ebx
    push eax

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

    mov eax, profundidad
    call atoi
    mov ebx, 4
    mul ebx
    push eax

    mov eax, altura
    call atoi
    mov ebx, 4
    mul ebx
    push eax

    pop eax
    mov ebx, eax
    add eax, ebx
    mov ebx, eax
 

    mov eax, mperimetro
    call sprint
    
    pop eax 
    add eax, ebx
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