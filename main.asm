; Uso de ciclos (Getting input)
; Compile with: nasm -f elf saltosv2.asm
; Link: ld -m elf_i386 saltosv2.o -o saltosv2
; Run with: ./saltosv2
 
%include        'functions.asm'
%include		'op/cuadrado.asm'
%include		'op/rectangulo.asm'
%include		'op/cubo.asm'
%include		'op/prisma.asm'
  
SECTION .data    

mInitMSG		db	'Programa para calcular el área, perimetro y volumen de superficie (Cubo y prisma rectangular).', 0h
mSecondMSG      db  '¿Qué figura desea utilizar?', 0h
mOptionsMSG     db  '1)Cuadrado, 2)Rectángulo, 3)Cubo, 4)Prisma rectangular',0h
mbase	db      'Ingrese la base: ', 0h
maltura	db      'Ingrese la altura: ', 0h  
mprof	db	'Ingrese la profundidad: ', 0h
marea	db	'El área es: ', 0h
mperimetro	db	'El perimetro es: ', 0h
mvolumen	db	'El volumen es: ', 0h

merror        db      'dato incorrecto', 0h 
magain	      db      '¿Desea realizar otra operación? (s/n)', 0h

SECTION .bss     
valor:	resb    80
base: 	resb	80
altura:	resb	80
profundidad:	resb	80



Srespuesta:     resb    80                            
dummy:		resb 1
 
SECTION .text
global  _start
 
_start:
etinicio:

    mov     eax, mInitMSG
    call    sprintLF

    mov     eax, mOptionsMSG
    call    sprintLF

    mov     eax, mSecondMSG
    call    sprintLF
 
    mov     eax, Srespuesta      
    call    scanf     


    cmp    byte[Srespuesta], '1'   
    je opCuadrado  

    cmp    byte[Srespuesta], '2'   
    je opRectangulo 

    cmp    byte[Srespuesta], '3'   
    je opCubo 
 
    cmp    byte[Srespuesta], '4'   
    je opPrisma
   
    mov     eax, merror    
    call    sprintLF
    jmp     opNext

opCuadrado: 
	call opCuadradoStatic

opRectangulo: 
	call opRectanguloStatic


opCubo: 
	call opCuboStatic

opPrisma: 
	call opPrismaStatic

opNext:

    mov     eax, magain
    call    sprintLF
 
    mov     eax, Srespuesta      
    call    scanf 

    cmp    byte[Srespuesta], 's'   
    je     etinicio  

    call    quit
