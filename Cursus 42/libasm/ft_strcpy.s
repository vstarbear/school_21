global _ft_strcpy

section .text
_ft_strcpy: 
			xor rax, rax			; rax = 0

_loop:		
			cmp byte[rsi + rax], 0	; compare *s2 to 0
			jz _end					; jump to _end if (*s2 == 0)
			mov dl, byte[rsi + rax]	; save *s2 to dl
			mov byte[rdi + rax], dl	; save dl to *s1
			inc rax					; rax++
			jmp	_loop				; repeat

_end:		
			inc rax					; rax++
			mov byte[rdi + rax], 0	; terminate s1 with \0
			mov rax, rdi			; save s1 in rax
			ret						; return rax (s1)