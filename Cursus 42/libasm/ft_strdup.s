global 		_ft_strdup
extern 		___error
extern		_malloc
extern		_ft_strlen
extern		_ft_strcpy

section 	.text

_ft_strdup:	
			call _ft_strlen		; get length of s1 with ft_strlen
			inc rax				; length + 1 (for \0)
			push rdi			; save s1 on stack
			mov rdi, rax		; pass length to rdi for malloc
			call _malloc		; get pointer of new string with malloc
			cmp rax, 0			; compare the pointer of new string with NULL
			jz _error			; jump to _error if new string == NULL
			mov rdi, rax		; save new string in rdi for ft_strcpy
			pop rsi				; pass s1 to rsi from stack
			call _ft_strcpy		; copy s1 to the new string
			mov rax, rdi		; save the pointer of the new string to rax
			ret					; return the pointer of the new string

_error:		
			call ___error		; call for error function that returns the address of errno
			mov [rax], dword 12	; pass a number of ENOMEM to errno
			mov rax, 0			; rax = 0
			ret					; return 0