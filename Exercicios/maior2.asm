; Programa para mostrar o maior entre dois valores inteiros

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
  varA dword 10
  varB dword 5
  
.code
  start:
    mov eax, varA
    cmp eax, varB
    jg maior
    jl menor
    maior: 
      printf("O maior valor eh %i", eax)
      jmp final1
    menor:
      printf("O maior valor eh %i", varB)
      
    final1:
      invoke ExitProcess, 0
      end start
