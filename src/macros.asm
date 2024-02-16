; macros 

	
m_drv_api	 	equ $92
m_getsetdrv  	equ $89
f_open       	equ $9a
f_close      	equ $9b
f_read       	equ $9d
f_write      	equ $9e
f_seek       	equ $9f
f_get_dir    	equ $a8
f_set_dir    	equ $a9
fa_read      	equ $01
fa_append    	equ $06
fa_overwrite 	equ $0c
writetx			equ $133b 
readrx			equ $143b
ctrlc			equ $03	
loadbuff		equ $6000				; this is where the load buffer is 
ba64buff		equ $a000				; this is where we encode the load buffer to 
buffersize		equ	$4000				; this is how much to load 
RXSETBAUD 		EQU 5179

TX 	EQU $133B
RX 	EQU $143B

	macro nextreg_nn reg, value
		dw $91ed
		db reg
		db value
	endm
	
	macro nextreg_a reg
		dw $92ed
		db reg
	endm
	
	macro send data
		ld 	a, data  
		call senduart 
	endm 