; strings, magic numbers (constant numbers), terminating strings, you know the value of it
; reserving space in memory for feature data and stuff like that 
;code, ma taktiez labels , bud _start: or _main:
;2 steps of compiling assembly - nasm -> .o file, than you have to lin kthe code. Linking compiles multiple c libraries
; gcc hlada main label, ld hrala start, cize zalezi podla linkeru ktory label pozuzivame
;registre: hardvare implemented variables, set of transistors that hold the data. Cize je to hardcoded
;if you want to preform operations on data you need to load them into registers and work with them 


section .data
  hello: db 'Hello world!',10
  helloLen: equ $-hello


section .text
  global _start

_start:
  mov eax,4
  mov ebx,1
  mov ecx,hello
  mov edx,helloLen
  int 80h

  mov eax,1
  mov ebx,0
  int 80h
