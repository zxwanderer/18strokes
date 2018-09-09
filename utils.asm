MODULE utils

SCREEN_ADDR equ #4000
ATTR_ADDR EQU SCREEN_ADDR+#1800

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
	CALL utils.noKey
	RET

noKey:
	xor a
	in a,(0xfe)
	cpl
	and 31
	jr nz,noKey
	ret

; в DE позиция на экране: D - y, E - x
; в BC - B - длина, C - цвет
attrLine:
    LD A, C
    LD (set_color+1), A
    LD L,D
    ADD HL, HL; x2
    ADD HL, HL; x4
    LD H, 11
    ADD HL, HL; x8
    ADD HL, HL; x16
    ADD HL, HL; x32
    LD D,0
    ADD HL, DE

set_color:
    LD A, %00000000
color_loop:
    LD (HL), A
    INC HL
    DJNZ color_loop

	RET


ENDMODULE