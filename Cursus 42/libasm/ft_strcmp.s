global _ft_strcmp

section .text

_ft_strcmp: 
			xor rax, rax			; rax = 0
			xor rdx, rdx			; rdx = 0

_loop:	
			mov al, byte[rdi]		; save *s1 to al			
			mov dl, byte[rsi]		; save *s2 to dl
			sub al, dl				; (al - dl) and save the result in al
			jnz _end				; jump to _end if (al - dl != 0)
			cmp byte[rsi], 0		; compare *s2 to 0
			jz _end					; jump to _end if (*s2 == 0)
			inc rdi					; rdi++ (s1++)
			inc rsi					; rsi++ (s2++)
			jmp _loop				; repeat

_end:	
			movsx rax, byte[rdi]	; copy *s1 to rax
			movsx rdx, byte[rsi]	; copy *s2 to rdx
			sub rax, rdx			; rax - rdx
			ret						; return rax