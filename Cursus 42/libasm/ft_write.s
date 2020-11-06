global 		_ft_write
extern 		___error

section 	.text

_ft_write:	
			mov rax, 0x02000004	; system call to write
			syscall				; invoke operating system to write
			jc _error			; jump to _error label if write syscall returns an error (CF is set to 1)
			ret					; return what write syscall saved in rax

_error:		
			push rax			; save rax value (error code) on stack
			call ___error		; call for error function that returns the address of errno
			pop rdx				; get the value (error code) from stack and save it in rdx
			mov [rax], rdx		; pass rdx value (error code) to errno address
			mov rax, -1			; rax = -1
			ret					; return -1