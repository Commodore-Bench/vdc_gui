;
; File generated by cc65 v 2.17 - Git eeb1b927
;
	.fopt		compiler,"cc65 v 2.17 - Git eeb1b927"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	on
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.dbg		file, "vdc_controls.c", 1821, 1543283770
	.dbg		file, "vdc_gui.h", 778, 1543280824
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/c128.h", 6693, 1534214079
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_vic2.h", 11027, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_sid.h", 3694, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_vdc.h", 2880, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/_6526.h", 4033, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/peekpoke.h", 3166, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/string.h", 5198, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stddef.h", 3127, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stdio.h", 6334, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stdarg.h", 2970, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/stdlib.h", 5884, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/conio.h", 9160, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/target.h", 3065, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/cbm.h", 11658, 1532377546
	.dbg		file, "J:\Software\Emulation\Commodore\Development\cc65\include/cbm_filetype.h", 5057, 1532377546
	.dbg		file, "vdc_win.h", 1736, 1543282193
	.dbg		file, "vdc_core.h", 1814, 1543295196
	.dbg		file, "vdc_controls.h", 561, 1543268877
	.dbg		file, "vdc_menus.h", 527, 1543268877
	.dbg		file, "vdc_control_listbox.h", 945, 1543268877
	.dbg		file, "vdc_control_textbox.h", 916, 1543268877
	.dbg		file, "vdc_control_label.h", 695, 1543268877
	.dbg		file, "vdc_control_button.h", 818, 1543268877
	.dbg		file, "vdc_control_checkbox.h", 815, 1543268877
	.dbg		sym, "strcmp", "00", extern, "_strcmp"
	.dbg		sym, "malloc", "00", extern, "_malloc"
	.dbg		sym, "free", "00", extern, "_free"
	.import		_strcmp
	.import		_malloc
	.import		_free
	.export		_CreateControl
	.export		_FindControl

; ---------------------------------------------------------------
; __near__ struct Control * __near__ CreateControl (__near__ struct Window *, __near__ unsigned char *, unsigned char, unsigned char, int)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CreateControl: near

	.dbg	func, "CreateControl", "00", extern, "_CreateControl"
	.dbg	sym, "window", "00", auto, 6
	.dbg	sym, "name", "00", auto, 4
	.dbg	sym, "x", "00", auto, 3
	.dbg	sym, "y", "00", auto, 2
	.dbg	sym, "controlType", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2
	.dbg	sym, "tmpctrl", "00", auto, -4

.segment	"CODE"

	.dbg	line, "vdc_controls.c", 15
	jsr     pushax
	.dbg	line, "vdc_controls.c", 19
	ldx     #$00
	lda     #$13
	jsr     _malloc
	jsr     pushax
	.dbg	line, "vdc_controls.c", 22
	jsr     decsp2
	ldy     #$02
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0009
	.dbg	line, "vdc_controls.c", 23
	tax
	jmp     L0006
	.dbg	line, "vdc_controls.c", 25
L0009:	ldy     #$0A
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0052
	.dbg	line, "vdc_controls.c", 26
	ldy     #$03
	jsr     ldaxysp
	jsr     _free
	.dbg	line, "vdc_controls.c", 27
	ldx     #$00
	txa
	jmp     L0006
	.dbg	line, "vdc_controls.c", 34
L0052:	jsr     ldaxysp
	ldy     #$0C
	jsr     ldaxidx
	cpx     #$00
	bne     L0013
	cmp     #$00
	bne     L0013
	.dbg	line, "vdc_controls.c", 36
	ldy     #$0D
	jsr     pushwysp
	ldx     #$00
	lda     #$13
	jsr     _malloc
	ldy     #$0B
	jsr     staxspidx
	.dbg	line, "vdc_controls.c", 37
	jsr     ldaxysp
	ldy     #$0C
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_controls.c", 38
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0A
	sta     (ptr1),y
	iny
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 40
	jmp     L001D
	.dbg	line, "vdc_controls.c", 42
L0013:	ldy     #$0B
	jsr     ldaxysp
	ldy     #$0C
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_controls.c", 44
	jmp     L0022
	.dbg	line, "vdc_controls.c", 46
L0020:	ldy     #$03
	jsr     ldaxysp
	jsr     stax0sp
	.dbg	line, "vdc_controls.c", 47
	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_controls.c", 48
	sta     ptr1
	stx     ptr1+1
	jsr     ldax0sp
	ldy     #$0A
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 44
L0022:	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	cpx     #$00
	bne     L0020
	cmp     #$00
	bne     L0020
	.dbg	line, "vdc_controls.c", 51
	ldy     #$05
	jsr     pushwysp
	ldx     #$00
	lda     #$13
	jsr     _malloc
	ldy     #$0C
	jsr     staxspidx
	.dbg	line, "vdc_controls.c", 52
	ldy     #$03
	jsr     ldaxysp
	ldy     #$0D
	jsr     ldaxidx
	ldy     #$02
	jsr     staxysp
	.dbg	line, "vdc_controls.c", 55
L001D:	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$09
	jsr     ldaxysp
	ldy     #$00
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 56
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$07
	lda     (sp),y
	ldy     #$02
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 57
	iny
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$06
	lda     (sp),y
	ldy     #$03
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 58
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$01
	ldy     #$04
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 59
	dey
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0C
	sta     (ptr1),y
	iny
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 60
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	lda     #$00
	ldy     #$0E
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 62
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$04
	lda     (sp),y
	iny
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 63
	ldy     #$03
	jsr     ldaxysp
	sta     ptr1
	stx     ptr1+1
	ldy     #$0B
	jsr     ldaxysp
	ldy     #$08
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
	.dbg	line, "vdc_controls.c", 67
	ldy     #$03
	jsr     ldaxysp
	.dbg	line, "vdc_controls.c", 68
L0006:	ldy     #$0C
	jmp     addysp
	.dbg	line

.endproc

; ---------------------------------------------------------------
; __near__ struct Control * __near__ FindControl (__near__ struct Window *, __near__ unsigned char *)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_FindControl: near

	.dbg	func, "FindControl", "00", extern, "_FindControl"
	.dbg	sym, "window", "00", auto, 2
	.dbg	sym, "name", "00", auto, 0
	.dbg	sym, "ctrl", "00", auto, -2

.segment	"CODE"

	.dbg	line, "vdc_controls.c", 74
	jsr     pushax
	.dbg	line, "vdc_controls.c", 75
	ldy     #$03
	jsr     ldaxysp
	ldy     #$0C
	jsr     pushwidx
	.dbg	line, "vdc_controls.c", 77
	jmp     L004E
	.dbg	line, "vdc_controls.c", 79
L0043:	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	jsr     ldaxysp
	jsr     ldaxi
	jsr     _strcmp
	cpx     #$00
	bne     L0048
	cmp     #$00
	bne     L0048
	.dbg	line, "vdc_controls.c", 80
	jsr     ldax0sp
	jmp     incsp6
	.dbg	line, "vdc_controls.c", 82
L0048:	jsr     ldax0sp
	ldy     #$0D
	jsr     ldaxidx
	jsr     stax0sp
	.dbg	line, "vdc_controls.c", 77
L004E:	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0043
	.dbg	line, "vdc_controls.c", 85
	tax
	.dbg	line, "vdc_controls.c", 86
	jmp     incsp6
	.dbg	line

.endproc
