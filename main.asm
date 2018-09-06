; main code get from http://hype.retroscene.org/blog/dev/477.html

    DEVICE 	ZXSPECTRUM128

	ORG	#6000
START_PROG:
	EI
	XOR A
	OUT (#FE), A

	CALL clean_attr

	CALL wait_50

	LD HL, intro_ptr
	LD DE, #4000
	CALL dzx7_standard

	CALL wait_50

	CALL clear_screen_zero

	; CALL input.waitKey
	; CALL input.noKey

	CALL clean_attr

	LD HL, screen_ptr
	LD DE, #C000
	CALL dzx7_standard

	LD      HL,#C000
	LD      BC,6912
    LD      DE,#4000
    LDIR

	CALL border_show

	CALL wait_50

MAIN_LOOP:
		LD A, ROW_COLOR
		LD (MENU_COLOR), A
		CALL menu_show
		
		CALL play

		LD A, ROW_BACKGROUND
		LD (MENU_COLOR), A
		CALL menu_show
		CALL move_next
		JP MAIN_LOOP

play:
CUR_MUSIC_INIT_PTR:
	LD HL, (music_list)
	CALL callHL
	CALL savage.START
	CALL input.noKey
	RET

callHL  JP (hl)

music_list: 
	defw music1.init, music2.init, music3.init, music4.init, music5.init

move_next:
	LD A, MENU_HEIGHT
	DEC A
	JP NZ, move_next1
	LD A, MENU_HEIGHT
	LD (MENU_CUR_NUM),A
	LD A, MENU_TOP_Y
	LD (MENU_ROW), A
	LD HL, music_list
	LD (CUR_MUSIC_INIT), HL
	RET
move_next1:
	LD (MENU_CUR_NUM),A
	LD HL, MENU_ROW
	INC (HL)
	LD HL, CUR_MUSIC_INIT
	INC (HL)
	INC (HL)
	RET

menu_show:
	LD DE, MENU_TOP_Y*256 + MENU_TOP_X
menu_set_paper:
	LD C, PAPER_RED
	LD B, MENU_WIDTH
	CALL screen.attrLine
	RET

wait_50:
	LD B, 100
wait_50_loop
	HALT
	XOR A
	IN A,(#FE)
	CPL
	AND 31
	JP NZ, wait_50_exit
	DJNZ wait_50_loop
wait_50_exit:
	CALL input.noKey
	RET

clean_attr:
	LD HL,ATTR_ADDR ;адрес очищаемой области
	LD DE,ATTR_ADDR+1
	LD BC,32*24-1 ;len:длина этой области
	LD (HL),0 ;заполнение её нулём
	LDIR ; (очистка)
	RET


;clear screen in zero
clear_screen_zero:
	push hl
	push bc
	ld b,7
l1zxc
	halt
	ld hl,22528
l2zxc
	ld a,(hl)
	and 7
	jr z,l3zxc
	dec a
l3zxc
	ld c,a
	ld a,(hl)
	and 56
	jr z,l4zxc
	sub 8
l4zxc
	or c
	ld (hl),a
	inc hl
	ld a,h
	cp 91
	jr nz,l2zxc
	djnz l1zxc
	pop bc
	pop hl
 ret

border_show:
	ld a,6
	halt
	out (254),a
	halt
	ld a,0
	halt 
	out (254),a
	RET

; текущий пункт меню
MENU_CUR_NUM equ move_next+1
MENU_ROW equ menu_show+2
MENU_COLOR equ menu_set_paper+1

; два байта - указатель на процедуру инициализации текущей музыки
CUR_MUSIC_INIT equ CUR_MUSIC_INIT_PTR+1

	include "zxengine/core/defines.asm"
	include "zxengine/core/routines/math.asm"
	include "zxengine/core/routines/input.asm"
	include "zxengine/core/routines/screen.asm"
	include "zxengine/core/routines/zx7.a80"

; координаты Y,X верхнего левого края меню
MENU_TOP_Y equ 7
MENU_TOP_X equ 15
MENU_WIDTH equ 6
MENU_HEIGHT equ 5 ; максимальное кол-во пунктов меню

ROW_COLOR equ %01100000
ROW_BACKGROUND equ %01100101

module savage
SONG_INITDATA_0 equ #0000
ORN_OFFSETS equ #0000
ORNAMENTS_DATA equ #0000
	include "zxengine/core/routines/music_savage.asm"
endmodule

module music1
init:
    LD HL, SONG_INITDATA_0
    LD (savage.SONG_INITDATA_SET+1), HL
	RET
	include "music/e18.asm"
endmodule

module music2
init:
    LD HL, SONG_INITDATA_0
    LD (savage.SONG_INITDATA_SET+1), HL
	RET
	include "music/Steenab.asm"
endmodule

module music3
init:
    LD HL, SONG_INITDATA_0
    LD (savage.SONG_INITDATA_SET+1), HL
	RET
	include "music/SteenOne.asm"
endmodule

module music4
init:
    LD HL, SONG_INITDATA_0
    LD (savage.SONG_INITDATA_SET+1), HL
	RET
	include "music/Tantin.asm"
endmodule

module music5
init:
    LD HL, SONG_INITDATA_0
    LD (savage.SONG_INITDATA_SET+1), HL
	RET
	include "music/TraTeen.asm"
endmodule

screen_ptr:
	incbin "graph/luNNNa.scr.zx7"

intro_ptr:
	incbin "graph/aertitle.scr.zx7"

ENDALL

	SAVESNA "out/main.sna",START_PROG

	DISPLAY START_PROG, ' ', ENDALL

boot.LOAD_ADDR equ START_PROG
boot.begin equ START_PROG
boot.end equ ENDALL
boot.START_ADDR equ START_PROG

  include "zxengine/core/routines/basic_boot_trd.asm"
  EMPTYTRD "18StrokesCat.trd" ;create empty TRD image
  SAVETRD "18StrokesCat.trd", "18Stroke.B", boot.Basic, boot.EndBasic - boot.Basic
  SAVETRD "18StrokesCat.trd","18Stroke.C",boot.begin,boot.end-boot.begin


