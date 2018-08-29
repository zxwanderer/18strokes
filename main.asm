; main code get from http://hype.retroscene.org/blog/dev/477.html

    DEVICE 	ZXSPECTRUM128

	ORG	#8000
START_PROG:

DFILE_ADDR: equ 0

MAIN_LOOP:
		CALL music5.init
		CALL savage.START
		LD A, ROW_COLOR
		LD (MENU_COLOR), A
		CALL menu_show
		CALL input.waitKey
		CALL input.noKey
		LD A, ROW_BACKGROUND
		LD (MENU_COLOR), A
		CALL menu_show
		CALL move_next
		JP MAIN_LOOP

move_next:
	LD A, MENU_MAX_NUM
	DEC A
	JP NZ, move_next1
	LD A, MENU_MAX_NUM
	LD (MENU_CUR_NUM),A
	LD A, MENU_TOP_Y
	LD (MENU_ROW), A
	RET
move_next1:
	LD (MENU_CUR_NUM),A
	LD HL, MENU_ROW
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

SONG_INITDATA_0_PTR: DEFW 00
ORN_OFFSETS_PTR: DEFW 00
ORNAMENTS_DATA_PTR: DEFW 00

module savage
	include "zxengine/core/routines/music_savage.asm"
endmodule

module music1
init:
	LD HL, SONG_INITDATA_0
	LD (SONG_INITDATA_0_PTR), HL
	LD HL, ORN_OFFSETS
	LD (ORN_OFFSETS_PTR), HL
	LD HL, ORNAMENTS_DATA
	LD (ORNAMENTS_DATA_PTR), HL
	RET
	include "music/e18.asm"
endmodule

module music2
init:
	LD HL, SONG_INITDATA_0
	LD (SONG_INITDATA_0_PTR), HL
	LD HL, ORN_OFFSETS
	LD (ORN_OFFSETS_PTR), HL
	LD HL, ORNAMENTS_DATA
	LD (ORNAMENTS_DATA_PTR), HL
	RET
	include "music/Steenab.asm"
endmodule

module music3
init:
	LD HL, SONG_INITDATA_0
	LD (SONG_INITDATA_0_PTR), HL
	LD HL, ORN_OFFSETS
	LD (ORN_OFFSETS_PTR), HL
	LD HL, ORNAMENTS_DATA
	LD (ORNAMENTS_DATA_PTR), HL
	RET
	include "music/SteenOne.asm"
endmodule

module music4
init:
	LD HL, SONG_INITDATA_0
	LD (SONG_INITDATA_0_PTR), HL
	LD HL, ORN_OFFSETS
	LD (ORN_OFFSETS_PTR), HL
	LD HL, ORNAMENTS_DATA
	LD (ORNAMENTS_DATA_PTR), HL
	RET
	include "music/Tantin.asm"
endmodule

module music5
init:
	LD HL, SONG_INITDATA_0
	LD (SONG_INITDATA_0_PTR), HL
	LD HL, ORN_OFFSETS
	LD (ORN_OFFSETS_PTR), HL
	LD HL, ORNAMENTS_DATA
	LD (ORNAMENTS_DATA_PTR), HL
	RET
	include "music/TraTeen.asm"
endmodule

ENDALL

	SAVESNA "out/main.sna",START_PROG

	DISPLAY START_PROG, ' ', ENDALL

