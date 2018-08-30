; main code get from http://hype.retroscene.org/blog/dev/477.html

    DEVICE 	ZXSPECTRUM128

	ORG	#6000
START_PROG:

MAIN_LOOP:

/*
		CALL music1.init
		CALL savage.START
		
		CALL music2.init
		CALL savage.START

		CALL music3.init
		CALL savage.START

		CALL music4.init
		CALL savage.START

		CALL music5.init
		CALL savage.START

		RET

*/
		LD A, ROW_COLOR
		LD (MENU_COLOR), A
		CALL menu_show
		; CALL input.waitKey
		
		CALL play
		; CALL input.noKey

		LD A, ROW_BACKGROUND
		LD (MENU_COLOR), A
		CALL menu_show
		CALL move_next
		JP MAIN_LOOP

play:
; 	LD B, (MENU_CUR_NUM)
; 	DEC B
; 	JP NZ, play_calc_loop_end
; 	LD HL, music_list
; play_calc_loop:
; 	INC HL
; 	DJNZ play_calc_loop
; play_calc_loop_end
; 	CALL callHL
; 	; CALL savage.START
CUR_MUSIC_INIT_PTR:
	LD HL, (music_list)
	CALL callHL
	CALL savage.START
	; CALL input.waitKey
	RET

callHL  JP (hl)

music_list: 
	defw music1.init, music2.init, music3.init, music4.init, music5.init

move_next:
	LD A, MENU_MAX_NUM
	DEC A
	JP NZ, move_next1
	LD A, MENU_MAX_NUM
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
	LD B, 10
	CALL screen.attrLine
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

; координаты Y,X верхнего левого края меню
MENU_TOP_Y equ 5
MENU_TOP_X equ 5

; максимальное кол-во пунктов меню
MENU_MAX_NUM equ 5

ROW_COLOR equ PAPER_BLUE
ROW_BACKGROUND equ PAPER_CYAN

; SONG_INITDATA_0_PTR: DEFW 00
; ORN_OFFSETS_PTR: DEFW 00
; ORNAMENTS_DATA_PTR: DEFW 00

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

ENDALL

	SAVESNA "out/main.sna",START_PROG

	DISPLAY START_PROG, ' ', ENDALL

