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
	.dbg		file, "vdc_win.c", 6003, 1646347252
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
	.dbg		sym, "free", "00", extern, "_free"
	.dbg		sym, "kbhit", "00", extern, "_kbhit"
	.dbg		sym, "cgetc", "00", extern, "_cgetc"
	.dbg		sym, "VDC_DrawBox", "00", extern, "_VDC_DrawBox"
	.dbg		sym, "VDC_PetsciiToScreenCode", "00", extern, "_VDC_PetsciiToScreenCode"
	.dbg		sym, "VDC_RowColToAddress", "00", extern, "_VDC_RowColToAddress"
	.dbg		sym, "VDC_Poke", "00", extern, "_VDC_Poke"
	.dbg		sym, "VDC_SetCursorMode", "00", extern, "_VDC_SetCursorMode"
	.dbg		sym, "VDC_CopyVDCToMem", "00", extern, "_VDC_CopyVDCToMem"
	.dbg		sym, "VDC_CopyMemToVDC", "00", extern, "_VDC_CopyMemToVDC"
	.import		_malloc
	.import		_free
	.import		_kbhit
	.import		_cgetc
	.import		_VDC_DrawBox
	.import		_VDC_PetsciiToScreenCode
	.import		_VDC_RowColToAddress
	.import		_VDC_Poke
	.import		_VDC_SetCursorMode
	.import		_VDC_CopyVDCToMem
	.import		_VDC_CopyMemToVDC
	.export		__renderWindowBorder
	.export		__restoreUnderWindow
	.export		__clearWindow
	.export		__renderWindowControls
	.export		_CreateWindow
	.export		_ShowWindow
	.export		_RefreshWindow
	.export		_CloseWindow
	.export		_DestroyWindow
	.export		_MoveWindow
	.export		_ActivateWindow
	.export		__renderWindowTitle
	.export		__stashUnderWindow

; ---------------------------------------------------------------
; void __near__ _renderWindowBorder (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderWindowBorder: near

	.dbg	func, "_renderWindowBorder", "00", extern, "__renderWindowBorder"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 15
	jsr     pushax
	.dbg	line, "vdc_win.c", 16
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	beq     L0002
	.dbg	line, "vdc_win.c", 17
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	jsr     pusha
	ldy     #$02
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	jsr     pusha
	ldy     #$04
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     pusha
	ldy     #$05
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	jsr     _VDC_DrawBox
	.dbg	line, "vdc_win.c", 18
L0002:	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _restoreUnderWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__restoreUnderWindow: near

	.dbg	func, "_restoreUnderWindow", "00", extern, "__restoreUnderWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "addr", "00", auto, -2
	.dbg	sym, "t", "00", auto, -4
	.dbg	sym, "i", "00", auto, -6

.segment	"CODE"

	.dbg	line, "vdc_win.c", 66
	jsr     pushax
	.dbg	line, "vdc_win.c", 70
	jsr     decsp6
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     _VDC_RowColToAddress
	ldy     #$04
	jsr     staxysp
	.dbg	line, "vdc_win.c", 72
	ldx     #$00
	txa
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 73
	jsr     stax0sp
L0002:	jsr     pushw0sp
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bpl     L0003
	.dbg	line, "vdc_win.c", 75
	ldy     #$07
	jsr     ldaxysp
	ldy     #$0A
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	jsr     ldaxysp
	clc
	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	jsr     pushax
	ldy     #$09
	jsr     pushwysp
	ldy     #$0B
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	jsr     _VDC_CopyMemToVDC
	.dbg	line, "vdc_win.c", 76
	ldy     #$04
	ldx     #$00
	lda     #$50
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 77
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 73
	ldx     #$00
	lda     #$01
	jsr     addeq0sp
	jmp     L0002
	.dbg	line, "vdc_win.c", 79
L0003:	jmp     incsp8

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _clearWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__clearWindow: near

	.dbg	func, "_clearWindow", "00", extern, "__clearWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "i", "00", auto, -2
	.dbg	sym, "x", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_win.c", 82
	jsr     pushax
	.dbg	line, "vdc_win.c", 86
	jsr     decsp4
	ldx     #$00
	txa
	ldy     #$02
	jsr     staxysp
L0002:	ldy     #$05
	jsr     pushwysp
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bpl     L0003
	.dbg	line, "vdc_win.c", 87
	ldx     #$00
	txa
	jsr     stax0sp
L0006:	jsr     pushw0sp
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	lda     (ptr1),y
	jsr     tosicmp0
	bpl     L0004
	.dbg	line, "vdc_win.c", 88
	ldy     #$05
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     ptr1
	ldy     #$03
	jsr     ldaxysp
	clc
	adc     ptr1
	bcc     L000A
	inx
L000A:	jsr     pushax
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     ptr1
	ldy     #$03
	jsr     ldaxysp
	clc
	adc     ptr1
	bcc     L000B
	inx
L000B:	jsr     _VDC_RowColToAddress
	jsr     pushax
	lda     #$60
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 87
	ldx     #$00
	lda     #$01
	jsr     addeq0sp
	jmp     L0006
	.dbg	line, "vdc_win.c", 86
L0004:	ldy     #$02
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	jmp     L0002
	.dbg	line, "vdc_win.c", 89
L0003:	jmp     incsp6

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _renderWindowControls (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderWindowControls: near

	.dbg	func, "_renderWindowControls", "00", extern, "__renderWindowControls"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2

.segment	"CODE"

	.dbg	line, "vdc_win.c", 92
	jsr     pushax
	.dbg	line, "vdc_win.c", 93
	jsr     ldax0sp
	ldy     #$0C
	jsr     pushwidx
	.dbg	line, "vdc_win.c", 95
	jmp     L0004
	.dbg	line, "vdc_win.c", 97
L0007:	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (ptr1),y
	cmp     #$01
	bne     L0006
	.dbg	line, "vdc_win.c", 98
	jsr     ldax0sp
	ldy     #$10
	jsr     pushwidx
	ldy     #$03
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
	.dbg	line, "vdc_win.c", 100
L0006:	jsr     ldax0sp
	ldy     #$0D
	jsr     ldaxidx
	jsr     stax0sp
	.dbg	line, "vdc_win.c", 95
L0004:	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0007
	.dbg	line, "vdc_win.c", 102
	jmp     incsp4

	.dbg	line
.endproc

; ---------------------------------------------------------------
; struct Window *__near__ CreateWindow (unsigned char row, unsigned char col, unsigned char width, unsigned char height, unsigned char border, unsigned char *title)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CreateWindow: near

	.dbg	func, "CreateWindow", "00", extern, "_CreateWindow"
	.dbg	sym, "row", "00", auto, 6
	.dbg	sym, "col", "00", auto, 5
	.dbg	sym, "width", "00", auto, 4
	.dbg	sym, "height", "00", auto, 3
	.dbg	sym, "border", "00", auto, 2
	.dbg	sym, "title", "00", auto, 0
	.dbg	sym, "window", "00", auto, -2

.segment	"CODE"

	.dbg	line, "vdc_win.c", 105
	jsr     pushax
	.dbg	line, "vdc_win.c", 111
	ldx     #$00
	lda     #$0D
	jsr     _malloc
	jsr     pushax
	.dbg	line, "vdc_win.c", 113
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0002
	.dbg	line, "vdc_win.c", 114
	tax
	jmp     L0001
	.dbg	line, "vdc_win.c", 117
L0002:	ldx     #$00
	ldy     #$06
	lda     (sp),y
	clc
	iny
	adc     (sp),y
	bcc     L000D
	inx
L000D:	cmp     #$51
	txa
	sbc     #$00
	bvs     L0005
	eor     #$80
L0005:	bmi     L000F
	ldx     #$00
	ldy     #$05
	lda     (sp),y
	clc
	ldy     #$08
	adc     (sp),y
	bcc     L000E
	inx
L000E:	cmp     #$1A
	txa
	sbc     #$00
	bvs     L0007
	eor     #$80
L0007:	bpl     L0004
	.dbg	line, "vdc_win.c", 118
L000F:	ldx     #$00
	txa
	jmp     L0001
	.dbg	line, "vdc_win.c", 121
L0004:	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$07
	lda     (sp),y
	ldy     #$00
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 122
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$08
	lda     (sp),y
	ldy     #$01
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 123
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$06
	lda     (sp),y
	ldy     #$02
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 124
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$05
	lda     (sp),y
	ldy     #$03
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 125
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (sp),y
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 126
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0B
	sta     (ptr1),y
	iny
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 127
	jsr     ldax0sp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	jsr     ldaxysp
	ldy     #$05
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 130
	jsr     pushw0sp
	ldy     #$08
	lda     (sp),y
	jsr     pusha0
	ldy     #$09
	lda     (sp),y
	jsr     tosumula0
	jsr     _malloc
	ldy     #$07
	jsr     staxspidx
	cpx     #$00
	bne     L0009
	cmp     #$00
	bne     L0009
	.dbg	line, "vdc_win.c", 132
	jsr     ldax0sp
	jsr     _free
	.dbg	line, "vdc_win.c", 133
	ldx     #$00
	txa
	jmp     L0001
	.dbg	line, "vdc_win.c", 137
L0009:	jsr     pushw0sp
	ldy     #$08
	lda     (sp),y
	jsr     pusha0
	ldy     #$09
	lda     (sp),y
	jsr     tosumula0
	jsr     _malloc
	ldy     #$09
	jsr     staxspidx
	cpx     #$00
	bne     L000B
	cmp     #$00
	bne     L000B
	.dbg	line, "vdc_win.c", 139
	jsr     ldax0sp
	ldy     #$08
	jsr     ldaxidx
	jsr     _free
	.dbg	line, "vdc_win.c", 140
	jsr     ldax0sp
	jsr     _free
	.dbg	line, "vdc_win.c", 141
	ldx     #$00
	txa
	jmp     L0001
	.dbg	line, "vdc_win.c", 144
L000B:	jsr     ldax0sp
	.dbg	line, "vdc_win.c", 145
L0001:	ldy     #$09
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ ShowWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ShowWindow: near

	.dbg	func, "ShowWindow", "00", extern, "_ShowWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 149
	jsr     pushax
	.dbg	line, "vdc_win.c", 150
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L0002
	.dbg	line, "vdc_win.c", 152
	jsr     ldax0sp
	jsr     __stashUnderWindow
	.dbg	line, "vdc_win.c", 153
	jsr     ldax0sp
	jsr     __clearWindow
	.dbg	line, "vdc_win.c", 154
	jsr     ldax0sp
	jsr     __renderWindowBorder
	.dbg	line, "vdc_win.c", 155
	jsr     ldax0sp
	jsr     __renderWindowTitle
	.dbg	line, "vdc_win.c", 156
	jsr     ldax0sp
	jsr     __renderWindowControls
	.dbg	line, "vdc_win.c", 158
L0002:	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ RefreshWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_RefreshWindow: near

	.dbg	func, "RefreshWindow", "00", extern, "_RefreshWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 161
	jsr     pushax
	.dbg	line, "vdc_win.c", 162
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L0002
	.dbg	line, "vdc_win.c", 163
	jsr     ldax0sp
	jsr     __renderWindowControls
	.dbg	line, "vdc_win.c", 164
L0002:	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ CloseWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CloseWindow: near

	.dbg	func, "CloseWindow", "00", extern, "_CloseWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 167
	jsr     pushax
	.dbg	line, "vdc_win.c", 168
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L0002
	.dbg	line, "vdc_win.c", 169
	jsr     ldax0sp
	jsr     __restoreUnderWindow
	.dbg	line, "vdc_win.c", 170
L0002:	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ DestroyWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DestroyWindow: near

	.dbg	func, "DestroyWindow", "00", extern, "_DestroyWindow"
	.dbg	sym, "window", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 172
	jsr     pushax
	.dbg	line, "vdc_win.c", 178
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	beq     L0002
	.dbg	line, "vdc_win.c", 180
	jsr     ldax0sp
	jsr     _CloseWindow
	.dbg	line, "vdc_win.c", 182
	jsr     ldax0sp
	ldy     #$0A
	jsr     ldaxidx
	jsr     _free
	.dbg	line, "vdc_win.c", 183
	jsr     ldax0sp
	ldy     #$08
	jsr     ldaxidx
	jsr     _free
	.dbg	line, "vdc_win.c", 184
	jsr     ldax0sp
	jsr     _free
	.dbg	line, "vdc_win.c", 186
L0002:	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ MoveWindow (struct Window *window, unsigned char row, unsigned char col)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_MoveWindow: near

	.dbg	func, "MoveWindow", "00", extern, "_MoveWindow"
	.dbg	sym, "window", "00", auto, 2
	.dbg	sym, "row", "00", auto, 1
	.dbg	sym, "col", "00", auto, 0

.segment	"CODE"

	.dbg	line, "vdc_win.c", 189
	jsr     pusha
	.dbg	line, "vdc_win.c", 190
	ldy     #$03
	jsr     ldaxysp
	jsr     _CloseWindow
	.dbg	line, "vdc_win.c", 192
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (sp),y
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 193
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (sp),y
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 195
	ldy     #$03
	jsr     ldaxysp
	jsr     _ShowWindow
	.dbg	line, "vdc_win.c", 197
	jmp     incsp4

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ ActivateWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ActivateWindow: near

	.dbg	func, "ActivateWindow", "00", extern, "_ActivateWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2
	.dbg	sym, "key", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_win.c", 203
	jsr     pushax
	.dbg	line, "vdc_win.c", 204
	jsr     ldax0sp
	ldy     #$0C
	jsr     pushwidx
	.dbg	line, "vdc_win.c", 205
	jsr     push0
	.dbg	line, "vdc_win.c", 207
	ldy     #$05
	jsr     ldaxysp
	ldy     #$0C
	jsr     ldaxidx
	cpx     #$00
	bne     L0020
	cmp     #$00
	.dbg	line, "vdc_win.c", 208
	jeq     L0005
	.dbg	line, "vdc_win.c", 210
L0020:	ldx     #$00
	lda     #$01
	jsr     _VDC_SetCursorMode
	.dbg	line, "vdc_win.c", 212
	jmp     L000C
	.dbg	line, "vdc_win.c", 216
L0008:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 219
	cpx     #$00
	bne     L000C
	cmp     #$00
	bne     L000C
	.dbg	line, "vdc_win.c", 220
	ldy     #$05
	jsr     ldaxysp
	ldy     #$0C
L0025:	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 214
L000C:	ldy     #$03
	jsr     ldaxysp
	ldy     #$12
	jsr     ldaxidx
	cpx     #$00
	bne     L0021
	cmp     #$00
	beq     L0008
	.dbg	line, "vdc_win.c", 224
L0021:	lda     #$00
	sta     $00D0
	.dbg	line, "vdc_win.c", 227
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$01
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 228
	ldy     #$03
	jsr     ldaxysp
	ldy     #$10
	jsr     pushwidx
	ldy     #$05
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
	.dbg	line, "vdc_win.c", 235
L0011:	jsr     _kbhit
	jsr     stax0sp
	.dbg	line, "vdc_win.c", 237
	cpx     #$00
	bne     L0022
	cmp     #$00
	beq     L0011
	.dbg	line, "vdc_win.c", 239
L0022:	jsr     _cgetc
	jsr     stax0sp
	.dbg	line, "vdc_win.c", 247
	cpx     #$00
	bne     L0014
	cmp     #$85
	bne     L0014
	.dbg	line, "vdc_win.c", 249
	stx     $00D0
	.dbg	line, "vdc_win.c", 252
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 253
	ldy     #$03
	jsr     ldaxysp
	ldy     #$10
	jsr     pushwidx
	ldy     #$05
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
	.dbg	line, "vdc_win.c", 258
	jmp     L0008
	.dbg	line, "vdc_win.c", 260
L0014:	ldy     #$01
	lda     (sp),y
	jne     L0018
	dey
	lda     (sp),y
	cmp     #$86
	bne     L0018
	.dbg	line, "vdc_win.c", 262
	sty     $00D0
	.dbg	line, "vdc_win.c", 265
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_win.c", 266
	ldy     #$03
	jsr     ldaxysp
	ldy     #$10
	jsr     pushwidx
	ldy     #$05
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
	.dbg	line, "vdc_win.c", 269
	ldy     #$05
	jsr     pushwysp
	ldy     #$07
	jsr     ldaxysp
	ldy     #$0C
	jsr     ldaxidx
	jsr     tosicmp
	bne     L001A
	.dbg	line, "vdc_win.c", 271
	jmp     L001D
	.dbg	line, "vdc_win.c", 272
L001B:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 271
L001D:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	cpx     #$00
	bne     L001B
	cmp     #$00
	bne     L001B
	.dbg	line, "vdc_win.c", 275
	jmp     L000C
	.dbg	line, "vdc_win.c", 277
L001A:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0B
	.dbg	line, "vdc_win.c", 279
	jmp     L0025
	.dbg	line, "vdc_win.c", 282
L0018:	ldy     #$03
	jsr     ldaxysp
	ldy     #$12
	jsr     pushwidx
	ldy     #$07
	jsr     pushwysp
	ldy     #$04
	ldx     #$00
	lda     (sp),y
	pha
	ldy     #$02
	lda     (sp),y
	sta     jmpvec+1
	iny
	lda     (sp),y
	sta     jmpvec+2
	pla
	jsr     jmpvec
	jsr     incsp2
	.dbg	line, "vdc_win.c", 284
	lda     #$00
	sta     $00D0
	.dbg	line, "vdc_win.c", 287
	jmp     L0011
	.dbg	line, "vdc_win.c", 290
L0005:	jmp     incsp6

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _renderWindowTitle (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__renderWindowTitle: near

	.dbg	func, "_renderWindowTitle", "00", extern, "__renderWindowTitle"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "addr", "00", auto, -2
	.dbg	sym, "i", "00", auto, -4
	.dbg	sym, "maxAddr", "00", auto, -6
	.dbg	sym, "c", "00", auto, -7

.segment	"CODE"

	.dbg	line, "vdc_win.c", 22
	jsr     pushax
	.dbg	line, "vdc_win.c", 26
	jsr     decsp7
	ldy     #$08
	jsr     ldaxysp
	ldy     #$06
	jsr     ldaxidx
	cpx     #$00
	bne     L000B
	cmp     #$00
	jeq     L0002
	.dbg	line, "vdc_win.c", 29
L000B:	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$0A
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     incax1
	jsr     _VDC_RowColToAddress
	ldy     #$05
	jsr     staxysp
	.dbg	line, "vdc_win.c", 32
	ldy     #$08
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$0A
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
	bcc     L0008
	inx
L0008:	jsr     decax4
	jsr     _VDC_RowColToAddress
	ldy     #$01
	jsr     staxysp
	.dbg	line, "vdc_win.c", 34
	ldx     #$00
	txa
	ldy     #$03
	jsr     staxysp
	.dbg	line, "vdc_win.c", 36
	ldy     #$08
	jsr     pushwysp
	ldy     #$07
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$5B
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 37
	ldy     #$08
	jsr     pushwysp
	ldy     #$07
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$20
	.dbg	line, "vdc_win.c", 39
	jmp     L000C
	.dbg	line, "vdc_win.c", 40
L0004:	ldy     #$06
	jsr     ldaxysp
	ldy     #$01
	cmp     (sp),y
	txa
	iny
	sbc     (sp),y
	bvc     L0009
	eor     #$80
L0009:	bpl     L0007
	.dbg	line, "vdc_win.c", 41
	ldy     #$08
	jsr     pushwysp
	ldy     #$07
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldy     #$02
	ldx     #$00
	lda     (sp),y
L000C:	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 39
L0007:	ldy     #$08
	jsr     ldaxysp
	ldy     #$06
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	jsr     ldaxysp
	clc
	adc     ptr1
	sta     ptr1
	txa
	adc     ptr1+1
	sta     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     (sp),y
	cmp     #$00
	jsr     boolne
	php
	ldy     #$03
	lda     #$01
	jsr     addeqysp
	plp
	bne     L0004
	.dbg	line, "vdc_win.c", 43
	ldy     #$08
	jsr     pushwysp
	ldy     #$07
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$20
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 44
	ldy     #$08
	jsr     pushwysp
	ldy     #$07
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldx     #$00
	lda     #$5D
	jsr     _VDC_PetsciiToScreenCode
	jsr     _VDC_Poke
	.dbg	line, "vdc_win.c", 47
L0002:	ldy     #$09
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ _stashUnderWindow (struct Window *window)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__stashUnderWindow: near

	.dbg	func, "_stashUnderWindow", "00", extern, "__stashUnderWindow"
	.dbg	sym, "window", "00", auto, 0
	.dbg	sym, "addr", "00", auto, -2
	.dbg	sym, "t", "00", auto, -4
	.dbg	sym, "i", "00", auto, -6

.segment	"CODE"

	.dbg	line, "vdc_win.c", 50
	jsr     pushax
	.dbg	line, "vdc_win.c", 54
	jsr     decsp6
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	jsr     pusha0
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     _VDC_RowColToAddress
	ldy     #$04
	jsr     staxysp
	.dbg	line, "vdc_win.c", 56
	ldx     #$00
	txa
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_win.c", 57
	jsr     stax0sp
L0002:	jsr     pushw0sp
	ldy     #$09
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bpl     L0003
	.dbg	line, "vdc_win.c", 59
	ldy     #$07
	jsr     pushwysp
	ldy     #$09
	jsr     ldaxysp
	ldy     #$0A
	jsr     ldaxidx
	sta     ptr1
	stx     ptr1+1
	ldy     #$05
	jsr     ldaxysp
	clc
	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	jsr     pushax
	ldy     #$0B
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	jsr     _VDC_CopyVDCToMem
	.dbg	line, "vdc_win.c", 60
	ldy     #$04
	ldx     #$00
	lda     #$50
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 61
	ldy     #$07
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$02
	ldx     #$00
	lda     (ptr1),y
	jsr     addeqysp
	.dbg	line, "vdc_win.c", 57
	ldx     #$00
	lda     #$01
	jsr     addeq0sp
	jmp     L0002
	.dbg	line, "vdc_win.c", 63
L0003:	jmp     incsp8

	.dbg	line
.endproc

