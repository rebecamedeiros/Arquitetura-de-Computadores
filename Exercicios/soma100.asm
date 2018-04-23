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
  soma dword 0

.code
 start:
  MOV EAX, soma
 somatorio:
  ADD soma, 1
  CMP soma, 100
  jle start
  printf("EAX: %i", EAX)
  invoke ExitProcess, 0
  end start 
