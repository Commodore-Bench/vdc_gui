;
; File generated by cc65 v 2.19 - Git 39df6f8
;
	.fopt		compiler,"cc65 v 2.19 - Git 39df6f8"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	on
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.dbg		file, "vdc_control_checkbox.c", 2739, 1543295518
	.dbg		file, "vdc_gui.h", 778, 1543280824
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/c128.h", 6518, 1645504250
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/_vic2.h", 10835, 1645504250
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/_sid.h", 3626, 1645504250
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/_vdc.h", 2827, 1645504250
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/_6526.h", 3962, 1645504249
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/peekpoke.h", 3108, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/string.h", 5187, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/stddef.h", 3057, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/stdio.h", 5920, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/stdarg.h", 2913, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/limits.h", 3580, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/stdlib.h", 5999, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/conio.h", 9026, 1645504250
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/target.h", 2992, 1645504251
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/cbm.h", 11892, 1645504250
	.dbg		file, "F:\Software\Emulation\Commodore\Development\cc65\include/cbm_filetype.h", 4949, 1645504250
	.dbg		file, "vdc_win.h", 1736, 1543282193
	.dbg		file, "vdc_core.h", 1814, 1543295196
	.dbg		file, "vdc_controls.h", 561, 1543268877
	.dbg		file, "vdc_menus.h", 527, 1543268877
	.dbg		file, "vdc_control_listbox.h", 1037, 1646425066
	.dbg		file, "vdc_control_textbox.h", 916, 1543268877
	.dbg		file, "vdc_control_label.h", 695, 1543268877
	.dbg		file, "vdc_control_button.h", 818, 1543268877
	.dbg		file, "vdc_control_checkbox.h", 815, 1543268877
	.dbg		sym, "malloc", "00", extern, "_malloc"
	.dbg		sym, "VDC_PetsciiToScreenCode", "00", extern, "_VDC_PetsciiToScreenCode"
	.dbg		sym, "VDC_RowColToAddress", "00", extern, "_VDC_RowColToAddress"
	.dbg		sym, "VDC_Poke", "00", extern, "_VDC_Poke"
	.dbg		sym, "VDC_PrintAt", "00", extern, "_VDC_PrintAt"
	.dbg		sym, "CreateControl", "00", extern, "_CreateControl"
	.import		_malloc
	.import		_VDC_PetsciiToScreenCode
	.import		_VDC_RowColToAddress
	.import		_VDC_Poke
	.import		_VDC_PrintAt
	.import		_CreateControl
	.export		_CreateCheckbox
	.export		__renderCheckboxHandler
	.export		__checkBoxInputHandler

.segment	"RODATA"

S0001:
	.byte	$20,$00

; ---------------------------------------------------------------
; struct _CHECKBOX *__near__ CreateCheckbox (struct Window *window, unsigned char *name, unsigned char x, unsigned char y, unsigned char *text)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CreateCheckbox: near

	.dbg	func, "CreateCheckbox", "00", extern, "_CreateCheckbox"
	.dbg	sym, "window", "00", auto, 6
	.dbg	sym, "name", "00", auto, 4
	.dbg	sym, "x", "00", auto, 3
	.dbg	sym, "y", "00", auto, 2
	.dbg	sym, "text", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2
	.dbg	sym, "checkBox", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_control_checkbox.c", 14
	jsr     pushax
	.dbg	line, "vdc_control_checkbox.c", 20
	jsr     decsp4
	ldy     #$0D
	jsr     pushwysp
	ldy     #$0D
	jsr     pushwysp
	ldy     #$0B
	lda     (sp),y
	jsr     pusha
	ldy     #$0B
	lda     (sp),y
	jsr     pusha
	ldx     #$00
	lda     #$03
	jsr     _CreateControl
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_control_checkbox.c", 22
	cpx     #$00
	bne     L0005
	cmp     #$00
	jeq     L0004
	.dbg	line, "vdc_control_checkbox.c", 24
L0005:	ldx     #$00
	lda     #$07
	jsr     _malloc
	jsr     stax0sp
	.dbg	line, "vdc_control_checkbox.c", 27
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	jsr     ldax0sp
	ldy     #$06
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 28
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	jsr     ldaxysp
	ldy     #$00
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 31
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #<(__renderCheckboxHandler)
	ldy     #$0F
	sta     (ptr1),y
	iny
	lda     #>(__renderCheckboxHandler)
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 32
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #<(__checkBoxInputHandler)
	ldy     #$11
	sta     (ptr1),y
	iny
	lda     #>(__checkBoxInputHandler)
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 35
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$04
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 36
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$05
	jsr     ldaxysp
	ldy     #$02
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 37
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$05
	sta     (ptr1),y
	iny
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 39
	jsr     ldax0sp
	.dbg	line, "vdc_control_checkbox.c", 43
L0004:	ldy     #$0C
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _renderCheckboxHandler (struct Control *ctrl)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderCheckboxHandler: near

	.dbg	func, "_renderCheckboxHandler", "00", extern, "__renderCheckboxHandler"
	.dbg	sym, "ctrl", "00", auto, 0
	.dbg	sym, "checkBox", "00", auto, -2
	.dbg	sym, "window", "00", auto, -4
	.dbg	sym, "c", "00", auto, -5
	.dbg	sym, "i", "00", auto, -7
	.dbg	sym, "addr", "00", auto, -9
	.dbg	sym, "maxAddr", "00", auto, -11

.segment	"CODE"

	.dbg	line, "vdc_control_checkbox.c", 46
	jsr     pushax
	.dbg	line, "vdc_control_checkbox.c", 47
	jsr     ldax0sp
	ldy     #$07
	jsr     pushwidx
	.dbg	line, "vdc_control_checkbox.c", 48
	jsr     ldax0sp
	jsr     ldaxi
	ldy     #$09
	jsr     pushwidx
	.dbg	line, "vdc_control_checkbox.c", 51
	jsr     decsp1
	jsr     push0
	.dbg	line, "vdc_control_checkbox.c", 54
	ldy     #$04
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     sreg
	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	ldx     #$00
	lda     (ptr1),y
	clc
	adc     sreg
	bcc     L000B
	inx
L000B:	jsr     pushax
	ldy     #$06
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     sreg
	ldy     #$0A
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	clc
	adc     sreg
	bcc     L000C
	inx
L000C:	jsr     _VDC_RowColToAddress
	jsr     pushax
	.dbg	line, "vdc_control_checkbox.c", 57
	ldy     #$06
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     sreg
	ldy     #$0A
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	ldx     #$00
	lda     (ptr1),y
	clc
	adc     sreg
	bcc     L000D
	inx
L000D:	jsr     pushax
	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     sreg
	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	clc
	adc     sreg
	bcc     L000E
	inx
L000E:	jsr     decax4
	jsr     _VDC_RowColToAddress
	jsr     pushax
	.dbg	line, "vdc_control_checkbox.c", 59
	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	beq     L0002
	.dbg	line, "vdc_control_checkbox.c", 60
	ldx     #$00
	lda     #$01
	jsr     subeq0sp
	.dbg	line, "vdc_control_checkbox.c", 62
L0002:	ldy     #$0C
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$0E
	lda     (ptr1),y
	beq     L0003
	.dbg	line, "vdc_control_checkbox.c", 63
	ldy     #$03
	jsr     ldaxysp
	jsr     decax1
	jsr     pushax
	ldx     #$00
	lda     #$2A
	.dbg	line, "vdc_control_checkbox.c", 64
	jmp     L0013
	.dbg	line, "vdc_control_checkbox.c", 65
L0003:	ldy     #$03
	jsr     ldaxysp
	jsr     decax1
	jsr     pushax
	ldx     #$00
	lda     #$20
L0013:	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_control_checkbox.c", 67
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$5B
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_control_checkbox.c", 69
	ldy     #$0A
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	cmp     #$01
	bne     L0005
	.dbg	line, "vdc_control_checkbox.c", 70
	iny
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$FA
	.dbg	line, "vdc_control_checkbox.c", 71
	jmp     L0014
	.dbg	line, "vdc_control_checkbox.c", 72
L0005:	iny
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$20
L0014:	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_control_checkbox.c", 74
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$5D
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_control_checkbox.c", 75
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$20
	.dbg	line, "vdc_control_checkbox.c", 78
	jmp     L0015
	.dbg	line, "vdc_control_checkbox.c", 79
L0007:	ldy     #$03
	jsr     ldaxysp
	ldy     #$00
	cmp     (sp),y
	txa
	iny
	sbc     (sp),y
	bvc     L000F
	eor     #$80
L000F:	bpl     L000A
	.dbg	line, "vdc_control_checkbox.c", 80
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldy     #$08
	ldx     #$00
	lda     (sp),y
L0015:	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_control_checkbox.c", 78
L000A:	ldy     #$0A
	jsr     ldaxysp
	ldy     #$03
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$05
	jsr     ldaxysp
	clc
	adc     ptr1
	sta     ptr1
	txa
	adc     ptr1+1
	sta     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	ldy     #$06
	sta     (sp),y
	cmp     #$00
	jsr     boolne
	php
	ldy     #$04
	lda     #$01
	jsr     addeqysp
	plp
	bne     L0007
	.dbg	line, "vdc_control_checkbox.c", 81
	ldy     #$0D
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _checkBoxInputHandler (struct Control *ctrl, unsigned char c)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__checkBoxInputHandler: near

	.dbg	func, "_checkBoxInputHandler", "00", extern, "__checkBoxInputHandler"
	.dbg	sym, "ctrl", "00", auto, 1
	.dbg	sym, "c", "00", auto, 0
	.dbg	sym, "checkBox", "00", auto, -2
	.dbg	sym, "buf", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_control_checkbox.c", 85
	jsr     pusha
	.dbg	line, "vdc_control_checkbox.c", 86
	ldy     #$02
	jsr     ldaxysp
	ldy     #$07
	jsr     pushwidx
	.dbg	line, "vdc_control_checkbox.c", 89
	jsr     decsp2
	lda     #$FA
	ldy     #$00
	sta     (sp),y
	.dbg	line, "vdc_control_checkbox.c", 90
	tya
	iny
	sta     (sp),y
	.dbg	line, "vdc_control_checkbox.c", 92
	ldy     #$04
	lda     (sp),y
	cmp     #$20
	jne     L0002
	.dbg	line, "vdc_control_checkbox.c", 94
	dey
	jsr     ldaxysp
	jsr     pushw
	.dbg	line, "vdc_control_checkbox.c", 96
	jsr     push0
	.dbg	line, "vdc_control_checkbox.c", 97
	jsr     push0
	.dbg	line, "vdc_control_checkbox.c", 99
	ldy     #$05
	jsr     ldaxysp
	ldy     #$09
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     sreg
	ldy     #$05
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	clc
	adc     sreg
	bcc     L000A
	inx
L000A:	jsr     staxysp
	.dbg	line, "vdc_control_checkbox.c", 100
	ldy     #$05
	jsr     ldaxysp
	ldy     #$09
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     sreg
	ldy     #$05
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	ldx     #$00
	lda     (ptr1),y
	clc
	adc     sreg
	bcc     L0008
	inx
L0008:	jsr     stax0sp
	.dbg	line, "vdc_control_checkbox.c", 102
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	cmp     #$01
	bne     L0003
	.dbg	line, "vdc_control_checkbox.c", 104
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$04
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 105
	jsr     pushw0sp
	ldy     #$05
	jsr     ldaxysp
	jsr     incax1
	jsr     pushax
	lda     #<(S0001)
	ldx     #>(S0001)
	.dbg	line, "vdc_control_checkbox.c", 107
	jmp     L000E
	.dbg	line, "vdc_control_checkbox.c", 109
L0003:	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$01
	ldy     #$04
	sta     (ptr1),y
	.dbg	line, "vdc_control_checkbox.c", 110
	jsr     pushw0sp
	ldy     #$05
	jsr     ldaxysp
	jsr     incax1
	jsr     pushax
	lda     #$0A
	jsr     leaa0sp
L000E:	jsr     pushax
	ldx     #$00
	txa
	jsr     _VDC_PrintAt
	.dbg	line, "vdc_control_checkbox.c", 114
	ldy     #$09
	jsr     ldaxysp
	ldy     #$06
	jsr     ldaxidx
	cpx     #$00
	bne     L000B
	cmp     #$00
	beq     L0005
	.dbg	line, "vdc_control_checkbox.c", 115
L000B:	ldy     #$09
	jsr     ldaxysp
	ldy     #$06
	jsr     pushwidx
	ldy     #$0B
	jsr     ldaxysp
	pha
	ldy     #$00
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_control_checkbox.c", 116
L0005:	jsr     incsp6
	.dbg	line, "vdc_control_checkbox.c", 117
L0002:	jmp     incsp7

	.dbg	line
.endproc

