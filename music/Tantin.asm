; ************************************************************************
; * Song data...
; ************************************************************************

SONG_INITDATA_0:
              ; *** Channel 1 ***
              DEFB  $FF   ; no song end loop
              DEFB  0  ; loop
              DEFW  C1_PATTERNS
              ; *** Channel 2 ***
              DEFB  $FF   ; no song end loop
              DEFB  0  ; loop
              DEFW  C2_PATTERNS
              ; *** Percussion ***
              DEFB  96  ; song end
              DEFB  0  ; loop
              DEFW  PERC_PATTERNS
              DEFW  ORN_OFFSETS
              DEFW  ORNAMENTS_DATA

ORN_OFFSETS:  DEFB  $00
              DEFB  $01
              DEFB  $05

ORNAMENTS_DATA:
              DEFB  $80       ; Ornament 0 (no arpeggio)
              DEFB  $00
              DEFB  $04
              DEFB  $87
              DEFB  $0C
              DEFB  $00
              DEFB  $0C
              DEFB  $0C
              DEFB  $FF

C1_PATTERNS:  DEFW      PAT1_0
              DEFW      PAT1_0
              DEFW      PAT1_0
              DEFW      PAT1_1
              DEFW      PAT1_0
              DEFW      PAT1_0
              DEFW      PAT1_0
              DEFW      PAT1_2
              DEFW      PAT1_3
              DEFW      PAT1_3
              DEFW      PAT1_3
              DEFW      PAT1_5
              DEFW      PAT1_3
              DEFW      PAT1_6
              DEFW      PAT1_3
              DEFW      PAT1_6
              DEFW      PAT1_7
              DEFW      PAT1_6
              DEFW      PAT1_3
              DEFW      PAT1_9
              DEFW      PAT1_11
              DEFW      PAT1_8
              DEFW      PAT1_12
              DEFW      PAT1_8
              DEFW      PAT1_11
              DEFW      PAT1_8
              DEFW      PAT1_12
              DEFW      PAT1_15
              DEFW      PAT1_8
              DEFW      PAT1_8
              DEFW      PAT1_8
              DEFW      PAT1_8
              DEFW      PAT1_8
              DEFW      PAT1_8
              DEFW      PAT1_8
              DEFW      PAT1_17
              DEFW      PAT1_11
              DEFW      PAT1_11
              DEFW      PAT1_12
              DEFW      PAT1_12
              DEFW      PAT1_11
              DEFW      PAT1_11
              DEFW      PAT1_12
              DEFW      PAT1_12
              DEFW      PAT1_7
              DEFW      PAT1_7
              DEFW      PAT1_5
              DEFW      PAT1_2
              DEFW      SONG_END

PAT1_0:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $0E
           DEFB $85,$80   ; Skew
        DEFB $0E
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_1:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $81,$33   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $E4,$04
           DEFB $85,$00   ; Skew
        DEFB $E0,$0E
           DEFB $85,$80   ; Skew
        DEFB $0E
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_2:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $81,$33   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $E4,$04
           DEFB $85,$00   ; Skew
        DEFB $E0,$0E
           DEFB $85,$80   ; Skew
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$18   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $E5,$10
        DEFB $82   ; End of Pattern
PAT1_3:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $1C
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $1C
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $85,$80   ; Skew
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_5:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $1C
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $E2,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $E1,$1C
        DEFB $82   ; End of Pattern
PAT1_6:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $85,$80   ; Skew
        DEFB $13
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $15
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $13
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $85,$80   ; Skew
        DEFB $13
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $85,$80   ; Skew
        DEFB $15
        DEFB $82   ; End of Pattern
PAT1_7:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$55   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$55   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$55   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$55   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $1C
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $1C
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $1C
           DEFB $85,$80   ; Skew
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_8:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $04
        DEFB $04
        DEFB $10
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_9:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $04
           DEFB $85,$80   ; Skew
        DEFB $04
           DEFB $85,$00   ; Skew
        DEFB $10
           DEFB $85,$80   ; Skew
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $85,$80   ; Skew
        DEFB $13
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $15
           DEFB $85,$00   ; Skew
        DEFB $15
           DEFB $81,$05   ; Glissando
           DEFB $85,$80   ; Skew
        DEFB $13
        DEFB $E3,$80
        DEFB $82   ; End of Pattern
PAT1_11:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E3,$1C
        DEFB $E0,$10
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_12:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E3,$1C
        DEFB $E0,$10
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_15:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $04
        DEFB $04
        DEFB $10
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
        DEFB $E4,$1C
        DEFB $82   ; End of Pattern
PAT1_17:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $04
        DEFB $04
        DEFB $10
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E1,$23
           DEFB $86       ; Phase effect
           DEFB $81,$55   ; Glissando
        DEFB $29
        DEFB $82   ; End of Pattern
SONG_END:     DEFB $01,$83

C2_PATTERNS:  DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_2
              DEFW      PAT2_3
              DEFW      PAT2_3
              DEFW      PAT2_3
              DEFW      PAT2_5
              DEFW      PAT2_4
              DEFW      PAT2_6
              DEFW      PAT2_4
              DEFW      PAT2_6
              DEFW      PAT2_4
              DEFW      PAT2_6
              DEFW      PAT2_4
              DEFW      PAT2_9
              DEFW      PAT2_11
              DEFW      PAT2_11
              DEFW      PAT2_12
              DEFW      PAT2_12
              DEFW      PAT2_11
              DEFW      PAT2_11
              DEFW      PAT2_12
              DEFW      PAT2_15
              DEFW      PAT2_13
              DEFW      PAT2_13
              DEFW      PAT2_14
              DEFW      PAT2_14
              DEFW      PAT2_13
              DEFW      PAT2_13
              DEFW      PAT2_16
              DEFW      PAT2_17
              DEFW      PAT2_11
              DEFW      PAT2_11
              DEFW      PAT2_12
              DEFW      PAT2_12
              DEFW      PAT2_11
              DEFW      PAT2_11
              DEFW      PAT2_12
              DEFW      PAT2_12
              DEFW      PAT2_4
              DEFW      PAT2_4
              DEFW      PAT2_5
              DEFW      PAT2_2
              DEFW      SONG_END

PAT2_0:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$FF   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$10
        DEFB $82   ; End of Pattern
PAT2_2:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$FF   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E9,$10
           DEFB $86       ; Phase effect
           DEFB $81,$02   ; Glissando
        DEFB $E0,$10
        DEFB $E1,$80
           DEFB $85,$AA   ; Skew
           DEFB $87,$FF   ; SkewXOR
        DEFB $E2,$13
        DEFB $82   ; End of Pattern
PAT2_3:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$FF   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$10
        DEFB $82   ; End of Pattern
PAT2_4:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$12   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E2,$10
        DEFB $E1,$13
        DEFB $E0,$17
        DEFB $E2,$10
        DEFB $E1,$0E
        DEFB $E0,$1C
        DEFB $15
        DEFB $E2,$10
        DEFB $82   ; End of Pattern
PAT2_5:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$FF   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EA,$10
        DEFB $E4,$80
        DEFB $82   ; End of Pattern
PAT2_6:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$12   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E2,$10
        DEFB $E1,$13
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $0E
           DEFB $C2   ; Arpeggio
        DEFB $10
        DEFB $04
        DEFB $0E
        DEFB $10
        DEFB $04
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_9:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$12   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E2,$10
        DEFB $E1,$13
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $0E
           DEFB $C2   ; Arpeggio
        DEFB $10
           DEFB $81,$12   ; Glissando
           DEFB $85,$FF   ; Skew
           DEFB $87,$FF   ; SkewXOR
           DEFB $C1   ; Arpeggio
        DEFB $E1,$10
           DEFB $C2   ; Arpeggio
        DEFB $E0,$16
           DEFB $C2   ; Arpeggio
        DEFB $1C
           DEFB $C2   ; Arpeggio
        DEFB $22
        DEFB $82   ; End of Pattern
PAT2_11:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$12   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $09
        DEFB $07
        DEFB $04
        DEFB $82   ; End of Pattern
PAT2_12:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$68   ; Skew
           DEFB $87,$EE   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $09
        DEFB $07
        DEFB $04
        DEFB $82   ; End of Pattern
PAT2_13:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$28
        DEFB $82   ; End of Pattern
PAT2_14:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$1C
        DEFB $82   ; End of Pattern
PAT2_15:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$68   ; Skew
           DEFB $87,$EE   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E1,$21
        DEFB $E0,$13
        DEFB $11
        DEFB $82   ; End of Pattern
PAT2_16:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$10
        DEFB $82   ; End of Pattern
PAT2_17:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$13   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$12   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EB,$10
        DEFB $E3,$80
        DEFB $82   ; End of Pattern
PERC_PATTERNS:
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM7
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM9
              DEFW      DRM7
              DEFW      DRM3
              DEFW      DRM7
              DEFW      DRM3
              DEFW      DRM7
              DEFW      DRM3
              DEFW      DRM7
              DEFW      DRM15
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM7
              DEFW      DRM3
              DEFW      DRM0

DRM0:
        DEFB $10
        DEFB $00   ; End of pattern
DRM3:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $00   ; End of pattern
DRM7:
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $00   ; End of pattern
DRM9:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $04
        DEFB $00   ; End of pattern
DRM15:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
