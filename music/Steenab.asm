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
              DEFB  80  ; song end
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
              DEFW      PAT1_1
              DEFW      PAT1_2
              DEFW      PAT1_1
              DEFW      PAT1_3
              DEFW      PAT1_4
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_7
              DEFW      PAT1_1
              DEFW      PAT1_9
              DEFW      PAT1_1
              DEFW      PAT1_9
              DEFW      PAT1_0
              DEFW      PAT1_10
              DEFW      PAT1_11
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_5
              DEFW      PAT1_4
              DEFW      PAT1_7
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_14
              DEFW      PAT1_15
              DEFW      PAT1_16
              DEFW      SONG_END

PAT1_0:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E1,$04
        DEFB $04
        DEFB $07
        DEFB $07
        DEFB $04
        DEFB $04
        DEFB $09
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_1:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $E1,$04
        DEFB $07
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1C
        DEFB $04
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $E1,$09
        DEFB $82   ; End of Pattern
PAT1_2:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $E1,$04
        DEFB $07
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1C
        DEFB $04
        DEFB $E1,$09
        DEFB $09
        DEFB $82   ; End of Pattern
PAT1_3:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $E1,$04
        DEFB $07
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1C
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$05   ; Glissando
        DEFB $E3,$1C
        DEFB $82   ; End of Pattern
PAT1_4:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1E
        DEFB $06
        DEFB $E1,$06
        DEFB $09
        DEFB $09
        DEFB $06
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1E
        DEFB $06
        DEFB $0B
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1E
        DEFB $E1,$0B
        DEFB $82   ; End of Pattern
PAT1_5:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1E
        DEFB $06
        DEFB $E1,$06
        DEFB $09
        DEFB $09
        DEFB $E0,$0D
        DEFB $0D
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $19
        DEFB $0E
        DEFB $1A
        DEFB $1A
        DEFB $0E
        DEFB $1A
        DEFB $82   ; End of Pattern
PAT1_7:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1E
        DEFB $06
        DEFB $E1,$06
        DEFB $09
        DEFB $09
        DEFB $E0,$0D
        DEFB $0D
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E5,$19
        DEFB $82   ; End of Pattern
PAT1_9:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $E1,$07
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1C
        DEFB $E1,$07
        DEFB $E0,$07
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $05
        DEFB $82   ; End of Pattern
PAT1_10:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E1,$04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1C
        DEFB $07
        DEFB $07
           DEFB $86       ; Phase effect
           DEFB $81,$24   ; Glissando
        DEFB $E2,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
        DEFB $E1,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$77   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$99   ; Glissando
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_11:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$66   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C1   ; Arpeggio
        DEFB $E3,$10
        DEFB $E1,$09
        DEFB $09
        DEFB $06
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1E
        DEFB $06
        DEFB $0B
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1E
        DEFB $E1,$0B
        DEFB $82   ; End of Pattern
PAT1_14:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $E1,$04
        DEFB $07
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
        DEFB $E5,$2F
        DEFB $82   ; End of Pattern
PAT1_15:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1E
        DEFB $06
        DEFB $E1,$06
        DEFB $09
        DEFB $09
        DEFB $E0,$06
        DEFB $E1,$80
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $18
           DEFB $86       ; Phase effect
        DEFB $E0,$1C
        DEFB $82   ; End of Pattern
PAT1_16:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$08   ; Glissando
           DEFB $85,$FF   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $ED,$1C
        DEFB $E1,$80
        DEFB $82   ; End of Pattern
SONG_END:     DEFB $01,$83

C2_PATTERNS:  DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_3
              DEFW      PAT2_4
              DEFW      PAT2_5
              DEFW      PAT2_4
              DEFW      PAT2_5
              DEFW      PAT2_6
              DEFW      PAT2_5
              DEFW      PAT2_4
              DEFW      PAT2_7
              DEFW      PAT2_8
              DEFW      PAT2_9
              DEFW      PAT2_8
              DEFW      PAT2_9
              DEFW      PAT2_0
              DEFW      PAT2_0
              DEFW      PAT2_11
              DEFW      PAT2_5
              DEFW      PAT2_4
              DEFW      PAT2_5
              DEFW      PAT2_6
              DEFW      PAT2_5
              DEFW      PAT2_4
              DEFW      PAT2_7
              DEFW      PAT2_12
              DEFW      PAT2_12
              DEFW      PAT2_13
              DEFW      PAT2_13
              DEFW      PAT2_12
              DEFW      PAT2_12
              DEFW      PAT2_13
              DEFW      PAT2_13
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      SONG_END

PAT2_0:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$10
        DEFB $82   ; End of Pattern
PAT2_3:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EB,$10
        DEFB $E3,$80
        DEFB $82   ; End of Pattern
PAT2_4:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$23   ; Skew
           DEFB $87,$22   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$19
           DEFB $C2   ; Arpeggio
        DEFB $19
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $12
        DEFB $19
        DEFB $12
        DEFB $17
        DEFB $12
           DEFB $C0   ; Arpeggio
        DEFB $19
           DEFB $C2   ; Arpeggio
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $19
        DEFB $12
        DEFB $82   ; End of Pattern
PAT2_5:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$23   ; Skew
           DEFB $87,$22   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$19
           DEFB $C2   ; Arpeggio
        DEFB $19
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $12
        DEFB $19
        DEFB $0E
           DEFB $81,$33   ; Glissando
        DEFB $E1,$0E
           DEFB $C0   ; Arpeggio
        DEFB $E0,$14
           DEFB $C2   ; Arpeggio
        DEFB $1A
        DEFB $E1,$0B
        DEFB $E0,$0D
        DEFB $19
        DEFB $82   ; End of Pattern
PAT2_6:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$01   ; Glissando
           DEFB $85,$23   ; Skew
           DEFB $87,$22   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1E
           DEFB $86       ; Phase effect
           DEFB $81,$55   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $E3,$24
        DEFB $E0,$12
        DEFB $19
        DEFB $12
        DEFB $17
        DEFB $12
           DEFB $C0   ; Arpeggio
        DEFB $19
           DEFB $C2   ; Arpeggio
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $19
        DEFB $12
        DEFB $82   ; End of Pattern
PAT2_7:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$23   ; Skew
           DEFB $87,$22   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$19
           DEFB $C2   ; Arpeggio
        DEFB $19
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $12
        DEFB $19
        DEFB $0E
           DEFB $86       ; Phase effect
           DEFB $81,$03   ; Glissando
        DEFB $E6,$19
        DEFB $E0,$19
        DEFB $82   ; End of Pattern
PAT2_8:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $10
           DEFB $C0   ; Arpeggio
        DEFB $04
           DEFB $85,$23   ; Skew
        DEFB $13
        DEFB $1F
        DEFB $13
        DEFB $1F
           DEFB $85,$AA   ; Skew
           DEFB $C2   ; Arpeggio
        DEFB $09
        DEFB $09
        DEFB $15
           DEFB $C0   ; Arpeggio
        DEFB $09
           DEFB $85,$23   ; Skew
        DEFB $15
        DEFB $1F
        DEFB $21
        DEFB $15
        DEFB $82   ; End of Pattern
PAT2_9:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$01   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
           DEFB $C2   ; Arpeggio
        DEFB $10
        DEFB $1C
           DEFB $C0   ; Arpeggio
        DEFB $10
           DEFB $85,$23   ; Skew
        DEFB $1A
        DEFB $1C
        DEFB $04
        DEFB $10
           DEFB $85,$AA   ; Skew
           DEFB $C2   ; Arpeggio
        DEFB $04
        DEFB $0E
        DEFB $07
           DEFB $C0   ; Arpeggio
        DEFB $13
           DEFB $81,$23   ; Glissando
        DEFB $E1,$1C
        DEFB $07
        DEFB $82   ; End of Pattern
PAT2_11:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$23   ; Skew
           DEFB $87,$22   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$19
           DEFB $C0   ; Arpeggio
        DEFB $19
        DEFB $12
           DEFB $C2   ; Arpeggio
        DEFB $1A
        DEFB $12
        DEFB $12
        DEFB $19
        DEFB $12
        DEFB $17
        DEFB $12
           DEFB $C0   ; Arpeggio
        DEFB $19
           DEFB $C2   ; Arpeggio
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $19
        DEFB $12
        DEFB $82   ; End of Pattern
PAT2_12:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $80
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $80
        DEFB $13
        DEFB $07
        DEFB $04
        DEFB $80
        DEFB $10
        DEFB $04
        DEFB $24
        DEFB $09
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT2_13:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$04
        DEFB $80
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $80
        DEFB $13
        DEFB $07
        DEFB $04
        DEFB $80
        DEFB $10
        DEFB $04
        DEFB $24
        DEFB $09
        DEFB $15
        DEFB $09
        DEFB $82   ; End of Pattern
PAT2_15:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$23   ; Skew
           DEFB $87,$22   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$19
           DEFB $C2   ; Arpeggio
        DEFB $19
        DEFB $12
        DEFB $1A
        DEFB $12
        DEFB $12
        DEFB $19
        DEFB $12
        DEFB $17
        DEFB $E1,$80
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
        DEFB $80
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $17
        DEFB $80
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $21
        DEFB $82   ; End of Pattern
PAT2_16:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$03   ; Glissando
           DEFB $85,$FF   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $ED,$10
        DEFB $E1,$80
        DEFB $82   ; End of Pattern
PERC_PATTERNS:
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM7
              DEFW      DRM1
              DEFW      DRM9
              DEFW      DRM1
              DEFW      DRM9
              DEFW      DRM0
              DEFW      DRM10
              DEFW      DRM11
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM2
              DEFW      DRM1
              DEFW      DRM7
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM14
              DEFW      DRM15
              DEFW      DRM0

DRM0:
        DEFB $10
        DEFB $00   ; End of pattern
DRM1:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $05
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $83
        DEFB $02
        DEFB $00   ; End of pattern
DRM2:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $05
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
DRM7:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $05
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $00   ; End of pattern
DRM9:
        DEFB $02
        DEFB $83
        DEFB $83
        DEFB $84
        DEFB $05
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $00   ; End of pattern
DRM10:
        DEFB $04
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $00   ; End of pattern
DRM11:
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $84
        DEFB $05
        DEFB $83
        DEFB $01
        DEFB $84
        DEFB $83
        DEFB $02
        DEFB $00   ; End of pattern
DRM14:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $00   ; End of pattern
DRM15:
        DEFB $83
        DEFB $03
        DEFB $84
        DEFB $0B
        DEFB $00   ; End of pattern
