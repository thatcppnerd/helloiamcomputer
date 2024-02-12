%include "src/lib/inc/prt/mbr.inc"

[org 0x7c00]
[bits 16]

boot1:
	mov byte [BOOT_DRV], dl
	jmp boot2 ; jump past bullshit area

boot1_end: times 0x18 - ($-$$) db 0

; idk what tf this section is
idk: times 0x40 - ($-$$) db 0

boot2:
	; set vid mode
	mov ah, 0x00 
	mov al, 0x03
	int 0x10

	; set cursor shape
	mov ah, 0x01
	mov ch, 0
	mov cl, 7
	int 0x10

	; print epic msg
	mov bx, msg
	call print

	jmp boot3 ; jump past mbr partition tables

	msg: db "Hello World, I am an iMac", 13, 10, 10,"eat my entire ass steve jobs" , 0

	print:
		push bx
		push ax
		mov ah, 0x0e
		print_check:
			mov al, byte [bx]
			cmp al, 0
			je print_done
		print_do:
			int 0x10
			inc bx
			jmp print_check
		print_done:
			pop ax
			pop bx
			ret

BOOT_DRV: db 0x00

times 440 - ($-$$) db 0
disk_id: dd 0
reserved: dw 0
mbr_prt:
	prt0: istruc prt_tbl_entry
	prt1: istruc prt_tbl_entry
	prt2: istruc prt_tbl_entry
	prt3: istruc prt_tbl_entry

boot_sig: dw 0xAA55
times 512 - ($-$$) db 0

boot3:
	
	jmp $


times 2048 - ($-$$) db 0
