; ____________________________
; ██▀███▀██▀▀▀▀▀▀▀█▀▀█        │   ▄▄       ▄▄   ▄▄
; ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ██ ▀ ██▄▀ ██▀ █ ██
; █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ▀█▄▀ ██   ▀█▄ ▀▄█▀
; ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘
;  by Guillaume 'Aoineko' Blanchard under CC-BY-AS license
;──────────────────────────────────────────────────────────────────────────────
; crt0 header for 48/64KB ROM program
;──────────────────────────────────────────────────────────────────────────────
; Code address: 0x4000
; Data address: 0xC000
;──────────────────────────────────────────────────────────────────────────────
.module	crt0

.include "defines.asm"
.include "macros.asm"

;==============================================================================
; ROM
;==============================================================================
	.area	_HEADER (ABS)
	.org	0x0000

_g_FirstAddr::

;------------------------------------------------------------------------------
; Header
	.area	_HOME
	.area	_CODE

_g_HeaderAddr::
	; ROM header
	ROM_HEADER crt0_init

;------------------------------------------------------------------------------
; Initialization code
crt0_init:
	; Delay startup using STKE hook (if ROM_DELAY is 1)
	DELAY_BOOT

	di
	; Set stack address at the top of free memory
	ld		sp, (HIMEM)

	; Initialize heap address
	ld		hl, #s__HEAP
	ld		(#_g_HeapStartAddress), hl

	; Set Page 2 slot equal to Page 1 slot
	INIT_P1_TO_P2

	; Install ISR in RAM
	INSTALL_RAM_ISR

	; Initialize globals
	INIT_GLOBALS

crt0_start:
	; start main() function
	ei
	call	_main
	rst		0

;------------------------------------------------------------------------------
; Ordering of segments for the linker
	.area	_RODATA
	.area	_INITIALIZER 
	.area	_GSINIT
	.area	_GSFINAL
_g_LastAddr::

;==============================================================================
; RAM
;==============================================================================
	.area	_DATA

_g_HeapStartAddress::
	.ds		2

;------------------------------------------------------------------------------
; Ordering of segments for the linker
	.area	_INITIALIZED
	.area	_BSEG
	.area	_BSS
	.area	_HEAP