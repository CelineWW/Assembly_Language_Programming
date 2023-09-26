section .text
        global _start

_start:
   		mov eax,[var1]  ;load var1 to eax
   		mov ebx,[var2]  ;load var2 to ebx
   		add eax,ebx     ;update eax result by adding var1 and var2  
   		mov [result], eax  ;store eax value to result variable

        
        mov eax,1	;set eax register to 1 
        int 0x80	;interrupt 0x80 

section .bss
result resb 1    ;define uninitialized variable result.

section .data
    var1 dd 10     ;initialize var1 to be 10.
    var2 dd 15     ;initialize var2 to be 15.
