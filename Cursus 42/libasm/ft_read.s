global 		_ft_read 
extern 		___error

section 	.text

_ft_read :	
			mov rax, 0x02000003	; system call to read 
			syscall				; invoke operating system to read 
			jc _error			; jump to _error label if read  syscall returns an error (CF is set to 1)
			ret					; return what read  syscall saved in rax

_error:		
			push rax			; save rax value (error code) on stack
			call ___error		; call for error function that returns the address of errno
			pop rdx				; get the value (error code) from stack and save it in rdx
			mov [rax], rdx		; pass rdx value (error code) to errno address
			mov rax, -1			; rax = -1
			ret					; return -1