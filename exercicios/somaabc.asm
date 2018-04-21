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
    varA dword 0
    varB dword 10
    varC dword 10

.code
    start:
        mov eax, varB
        add eax, varC
        add eax, 100
        mov varA, eax

        printf("A = B + C + 100 = %i", varA)

        invoke ExitProcess, 0

    end start


