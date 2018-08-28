MODULE screen

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
