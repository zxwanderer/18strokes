MODULE screen

  MACRO setScreen inc_
    defw screen.set_colors
    defb inc_
  ENDM

set_colors:
  mLDA
  PUSH HL

  LD HL,ATTR_ADDR
  LD (HL),A
  LD DE,ATTR_ADDR+1
  LD BC,768
  LDIR

  POP HL
  JP zxengine.process

ENDMODULE
