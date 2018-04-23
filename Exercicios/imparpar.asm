;Programa para exibir se um valor é impar ou par, sem divisão
;Usando desvios condicionais e AND

.386
.model flat, stdcall                            
option casemap :none		                 
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc             
include \masm32\include\msvcrt.inc             
include \masm32\macros\macros.asm              

includelib \masm32\lib\msvcrt.lib              
includelib \masm32\lib\kernel32.lib            
includelib \masm32\lib\masm32.lib  

.data
  varA dword 5

.code
  start:
    mov eax, varA
    and eax, 1
    ;je par
    jne impar
    printf("Eh par")
  ;par:
    ;printf("Eh par")
    ;jmp final1
  impar:
    printf("Eh impar")
    
  ;final:
    invoke ExitProcess, 0
    end start
