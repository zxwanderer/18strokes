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
              DEFB  74  ; song end
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
              DEFW      PAT1_0
              DEFW      PAT1_2
              DEFW      PAT1_3
              DEFW      PAT1_2
              DEFW      PAT1_3
              DEFW      PAT1_4
              DEFW      PAT1_4
              DEFW      PAT1_4
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_7
              DEFW      PAT1_4
              DEFW      PAT1_10
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_11
              DEFW      PAT1_9
              DEFW      PAT1_11
              DEFW      PAT1_14
              DEFW      PAT1_4
              DEFW      PAT1_7
              DEFW      PAT1_4
              DEFW      PAT1_10
              DEFW      PAT1_12
              DEFW      PAT1_9
              DEFW      PAT1_12
              DEFW      PAT1_9
              DEFW      PAT1_12
              DEFW      PAT1_9
              DEFW      PAT1_12
              DEFW      PAT1_9
              DEFW      PAT1_15
              DEFW      SONG_END

PAT1_0:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
        DEFB $E2,$04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$09
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$09
        DEFB $82   ; End of Pattern
PAT1_2:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
        DEFB $E2,$04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$09
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$09
        DEFB $82   ; End of Pattern
PAT1_3:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
        DEFB $E2,$04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$24
        DEFB $E2,$09
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $E0,$24
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $18
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $18
        DEFB $82   ; End of Pattern
PAT1_4:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $C2   ; Arpeggio
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $09
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_5:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E1,$34
           DEFB $86       ; Phase effect
           DEFB $81,$88   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E3,$30
        DEFB $82   ; End of Pattern
PAT1_7:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $02
           DEFB $C2   ; Arpeggio
        DEFB $02
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $04
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_8:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $C2   ; Arpeggio
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $24
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_9:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $C2   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $04
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_10:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$88   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E1,$02
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E3,$04
        DEFB $82   ; End of Pattern
PAT1_11:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$02   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E3,$1C
           DEFB $81,$02   ; Glissando
        DEFB $E0,$24
           DEFB $86       ; Phase effect
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $C2   ; Arpeggio
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $24
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_12:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$02   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$02   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E2,$1C
           DEFB $81,$02   ; Glissando
        DEFB $E0,$24
           DEFB $86       ; Phase effect
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $C2   ; Arpeggio
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $24
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_14:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$24
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
        DEFB $24
           DEFB $C2   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $09
        DEFB $15
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $C2   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $E2,$04
        DEFB $82   ; End of Pattern
PAT1_15:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$02   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$02   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $EE,$1C
        DEFB $82   ; End of Pattern
SONG_END:     DEFB $01,$83

C2_PATTERNS:  DEFW      PAT2_0
              DEFW      PAT2_1
              DEFW      PAT2_0
              DEFW      PAT2_1
              DEFW      PAT2_0
              DEFW      PAT2_1
              DEFW      PAT2_0
              DEFW      PAT2_1
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_5
              DEFW      PAT2_6
              DEFW      PAT2_7
              DEFW      PAT2_6
              DEFW      PAT2_10
              DEFW      PAT2_8
              DEFW      PAT2_9
              DEFW      PAT2_8
              DEFW      PAT2_9
              DEFW      PAT2_11
              DEFW      PAT2_9
              DEFW      PAT2_11
              DEFW      PAT2_14
              DEFW      PAT2_6
              DEFW      PAT2_7
              DEFW      PAT2_6
              DEFW      PAT2_10
              DEFW      PAT2_11
              DEFW      PAT2_13
              DEFW      PAT2_11
              DEFW      PAT2_13
              DEFW      PAT2_11
              DEFW      PAT2_13
              DEFW      PAT2_11
              DEFW      PAT2_13
              DEFW      PAT2_15
              DEFW      SONG_END

PAT2_0:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E7,$04
           DEFB $81,$33   ; Glissando
        DEFB $09
        DEFB $82   ; End of Pattern
PAT2_1:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E4,$04
        DEFB $E0,$10
        DEFB $05
        DEFB $04
           DEFB $81,$33   ; Glissando
        DEFB $E2,$10
           DEFB $81,$12   ; Glissando
        DEFB $E1,$04
           DEFB $81,$22   ; Glissando
        DEFB $E2,$02
        DEFB $82   ; End of Pattern
PAT2_5:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E7,$04
           DEFB $81,$33   ; Glissando
        DEFB $E3,$09
        DEFB $80
        DEFB $82   ; End of Pattern
PAT2_6:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$CC   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $10
        DEFB $10
        DEFB $15
        DEFB $10
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_7:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$33   ; Glissando
           DEFB $85,$CC   ; Skew
           DEFB $87,$02   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$09
        DEFB $09
        DEFB $15
        DEFB $13
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $10
        DEFB $10
        DEFB $0E
        DEFB $0E
        DEFB $11
        DEFB $11
        DEFB $13
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_8:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$00   ; Glissando
           DEFB $85,$44   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
        DEFB $1C
           DEFB $86       ; Phase effect
        DEFB $1C
        DEFB $10
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $10
        DEFB $10
        DEFB $15
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $18
           DEFB $86       ; Phase effect
        DEFB $18
        DEFB $13
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_9:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$44   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
        DEFB $1C
           DEFB $86       ; Phase effect
        DEFB $1C
        DEFB $13
        DEFB $15
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $13
           DEFB $86       ; Phase effect
        DEFB $10
        DEFB $10
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $0E
           DEFB $86       ; Phase effect
        DEFB $0E
        DEFB $11
        DEFB $11
        DEFB $13
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_10:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$33   ; Glissando
           DEFB $85,$CC   ; Skew
           DEFB $87,$02   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$09
        DEFB $09
        DEFB $15
        DEFB $13
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $10
           DEFB $81,$22   ; Glissando
        DEFB $10
        DEFB $E1,$80
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E3,$1C
        DEFB $82   ; End of Pattern
PAT2_11:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$01   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E2,$1C
           DEFB $85,$44   ; Skew
           DEFB $87,$AA   ; SkewXOR
        DEFB $E0,$10
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $10
        DEFB $10
        DEFB $15
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $18
           DEFB $86       ; Phase effect
        DEFB $18
        DEFB $13
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_13:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$44   ; Skew
           DEFB $87,$22   ; SkewXOR
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
        DEFB $1C
           DEFB $86       ; Phase effect
        DEFB $1C
        DEFB $13
        DEFB $15
        DEFB $1C
           DEFB $86       ; Phase effect
        DEFB $22
           DEFB $86       ; Phase effect
        DEFB $10
        DEFB $10
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $0E
           DEFB $86       ; Phase effect
        DEFB $0E
        DEFB $28
        DEFB $11
        DEFB $2B
        DEFB $10
        DEFB $82   ; End of Pattern
PAT2_14:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$44   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$1C
           DEFB $86       ; Phase effect
        DEFB $1C
           DEFB $86       ; Phase effect
        DEFB $1C
        DEFB $13
        DEFB $15
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $13
           DEFB $86       ; Phase effect
        DEFB $10
        DEFB $10
        DEFB $10
           DEFB $86       ; Phase effect
        DEFB $0E
           DEFB $86       ; Phase effect
        DEFB $0E
        DEFB $E3,$11
        DEFB $82   ; End of Pattern
PAT2_15:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$01   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E2,$1C
           DEFB $85,$44   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
        DEFB $15
        DEFB $10
        DEFB $13
        DEFB $E8,$10
        DEFB $82   ; End of Pattern
PERC_PATTERNS:
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM2
              DEFW      DRM3
              DEFW      DRM2
              DEFW      DRM3
              DEFW      DRM4
              DEFW      DRM4
              DEFW      DRM4
              DEFW      DRM5
              DEFW      DRM4
              DEFW      DRM4
              DEFW      DRM4
              DEFW      DRM5
              DEFW      DRM8
              DEFW      DRM9
              DEFW      DRM8
              DEFW      DRM9
              DEFW      DRM11
              DEFW      DRM9
              DEFW      DRM11
              DEFW      DRM9
              DEFW      DRM4
              DEFW      DRM4
              DEFW      DRM4
              DEFW      DRM5
              DEFW      DRM11
              DEFW      DRM9
              DEFW      DRM11
              DEFW      DRM9
              DEFW      DRM11
              DEFW      DRM9
              DEFW      DRM11
              DEFW      DRM9
              DEFW      DRM15

DRM0:
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $03
        DEFB $00   ; End of pattern
DRM2:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $03
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
DRM3:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $03
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $84
        DEFB $84
        DEFB $00   ; End of pattern
DRM4:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
DRM5:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $03
        DEFB $00   ; End of pattern
DRM8:
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $84
        DEFB $02
        DEFB $00   ; End of pattern
DRM9:
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $83
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
DRM11:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $03
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $84
        DEFB $02
        DEFB $00   ; End of pattern
DRM15:
        DEFB $83
        DEFB $0F
        DEFB $00   ; End of pattern
