.386
.model flat, stdcall
option casemap :none
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\msvcrt.inc
include \masm32\macros\macros.asm
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\msvcrt.lib

.data
  variavelA dword 10
  variavelB dword 20 
  variavelC dword 30

.code
start:
  MOV EAX, variavelA
  ADD EAX, variavelB ; EAX = EAX  + B
  ADD EAX, variavelC
  printf("O conteudo de EAX: %I", EAX)
  invoke ExitProcess, 0
end start
