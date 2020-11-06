global _ft_strlen

section .text
_ft_strlen: 
			xor rax, rax			; rax = 0

_loop:		
			cmp byte[rdi + rax], 0	; compare *s with \0
			jz _end					; jump to __end if *s == \0
			inc rax					; rax++
			jmp	_loop				; repeat

_end:		
			ret						; return length of the string