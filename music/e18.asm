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
              DEFB  116  ; song end
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
              DEFW      PAT1_1
              DEFW      PAT1_11
              DEFW      PAT1_2
              DEFW      PAT1_3
              DEFW      PAT1_4
              DEFW      PAT1_3
              DEFW      PAT1_5
              DEFW      PAT1_6
              DEFW      PAT1_6
              DEFW      PAT1_12
              DEFW      PAT1_7
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_10
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_13
              DEFW      PAT1_6
              DEFW      PAT1_6
              DEFW      PAT1_6
              DEFW      PAT1_17
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_18
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_1
              DEFW      PAT1_20
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_18
              DEFW      PAT1_9
              DEFW      PAT1_8
              DEFW      PAT1_9
              DEFW      PAT1_10
              DEFW      PAT1_9
              DEFW      PAT1_10
              DEFW      PAT1_9
              DEFW      PAT1_10
              DEFW      PAT1_9
              DEFW      PAT1_10
              DEFW      PAT1_9
              DEFW      PAT1_21
              DEFW      PAT1_22
              DEFW      SONG_END

PAT1_0:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $E4,$04
        DEFB $E0,$04
        DEFB $04
        DEFB $10
        DEFB $04
        DEFB $07
        DEFB $07
        DEFB $04
        DEFB $10
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
        DEFB $10
        DEFB $E4,$04
        DEFB $E0,$04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $07
        DEFB $07
        DEFB $04
        DEFB $10
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
        DEFB $10
        DEFB $E4,$04
        DEFB $E0,$04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $1C
        DEFB $80
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
        DEFB $1C
        DEFB $80
           DEFB $86       ; Phase effect
           DEFB $81,$15   ; Glissando
        DEFB $E1,$1C
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
        DEFB $10
        DEFB $E3,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $07
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_4:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $10
        DEFB $E3,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $09
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $09
        DEFB $13
        DEFB $15
        DEFB $09
        DEFB $15
        DEFB $82   ; End of Pattern
PAT1_5:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $10
        DEFB $E3,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $09
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$08   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$08   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$08   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$08   ; Glissando
        DEFB $1C
        DEFB $82   ; End of Pattern
PAT1_6:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $09
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $04
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $09
        DEFB $04
        DEFB $0B
        DEFB $04
        DEFB $09
        DEFB $04
        DEFB $82   ; End of Pattern
PAT1_7:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $09
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $04
           DEFB $C2   ; Arpeggio
        DEFB $E1,$07
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E0,$09
        DEFB $04
        DEFB $0B
        DEFB $04
        DEFB $E1,$80
        DEFB $82   ; End of Pattern
PAT1_8:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $39
           DEFB $C2   ; Arpeggio
        DEFB $E1,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $35
           DEFB $C2   ; Arpeggio
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_9:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C1   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $35
           DEFB $C2   ; Arpeggio
        DEFB $E1,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $09
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $35
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $09
        DEFB $15
        DEFB $82   ; End of Pattern
PAT1_10:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$32
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $32
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $32
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $32
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $39
           DEFB $C2   ; Arpeggio
        DEFB $E1,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $35
           DEFB $C2   ; Arpeggio
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_11:
        DEFB 7    ; Pattern Tempo
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $23
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $23
        DEFB $E4,$04
        DEFB $E0,$04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
        DEFB $07
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_12:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $09
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $04
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $09
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
        DEFB $E1,$34
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$1A
        DEFB $04
        DEFB $82   ; End of Pattern
PAT1_13:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C1   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $10
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $35
           DEFB $C2   ; Arpeggio
        DEFB $E1,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $09
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $E3,$35
        DEFB $82   ; End of Pattern
PAT1_17:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$04
        DEFB $04
        DEFB $09
        DEFB $04
        DEFB $07
        DEFB $04
        DEFB $09
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $04
        DEFB $07
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E2,$09
           DEFB $86       ; Phase effect
           DEFB $81,$03   ; Glissando
        DEFB $23
        DEFB $82   ; End of Pattern
PAT1_18:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$21
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $21
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $21
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $21
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $39
           DEFB $C2   ; Arpeggio
        DEFB $E1,$04
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
        DEFB $E0,$24
        DEFB $04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $1C
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C0   ; Arpeggio
        DEFB $35
           DEFB $C2   ; Arpeggio
        DEFB $07
        DEFB $04
        DEFB $10
        DEFB $82   ; End of Pattern
PAT1_20:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$1C
        DEFB $04
        DEFB $10
        DEFB $E4,$04
        DEFB $E0,$04
        DEFB $04
           DEFB $86       ; Phase effect
           DEFB $81,$05   ; Glissando
        DEFB $E1,$28
           DEFB $86       ; Phase effect
           DEFB $81,$12   ; Glissando
        DEFB $E0,$2D
           DEFB $86       ; Phase effect
        DEFB $33
           DEFB $86       ; Phase effect
           DEFB $81,$05   ; Glissando
        DEFB $2D
        DEFB $80
        DEFB $82   ; End of Pattern
PAT1_21:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$32
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $32
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $32
           DEFB $86       ; Phase effect
           DEFB $81,$23   ; Glissando
        DEFB $32
           DEFB $86       ; Phase effect
           DEFB $81,$04   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $39
           DEFB $C2   ; Arpeggio
        DEFB $E1,$80
           DEFB $86       ; Phase effect
        DEFB $E2,$80
           DEFB $86       ; Phase effect
        DEFB $E1,$80
           DEFB $86       ; Phase effect
           DEFB $C0   ; Arpeggio
        DEFB $E0,$80
           DEFB $C2   ; Arpeggio
        DEFB $E2,$80
        DEFB $82   ; End of Pattern
PAT1_22:
        DEFB 7    ; Pattern Tempo
        DEFB $EF,$80
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
              DEFW      PAT2_4
              DEFW      PAT2_3
              DEFW      PAT2_4
              DEFW      PAT2_6
              DEFW      PAT2_6
              DEFW      PAT2_12
              DEFW      PAT2_7
              DEFW      PAT2_8
              DEFW      PAT2_9
              DEFW      PAT2_8
              DEFW      PAT2_9
              DEFW      PAT2_10
              DEFW      PAT2_9
              DEFW      PAT2_8
              DEFW      PAT2_13
              DEFW      PAT2_14
              DEFW      PAT2_14
              DEFW      PAT2_14
              DEFW      PAT2_17
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      PAT2_18
              DEFW      PAT2_16
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      PAT2_19
              DEFW      PAT2_19
              DEFW      PAT2_19
              DEFW      PAT2_20
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      PAT2_18
              DEFW      PAT2_16
              DEFW      PAT2_15
              DEFW      PAT2_16
              DEFW      PAT2_10
              DEFW      PAT2_9
              DEFW      PAT2_10
              DEFW      PAT2_9
              DEFW      PAT2_10
              DEFW      PAT2_9
              DEFW      PAT2_10
              DEFW      PAT2_9
              DEFW      PAT2_21
              DEFW      PAT2_22
              DEFW      SONG_END

PAT2_0:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$80
        DEFB $82   ; End of Pattern
PAT2_2:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E7,$80
           DEFB $81,$12   ; Glissando
           DEFB $85,$FF   ; Skew
           DEFB $87,$00   ; SkewXOR
        DEFB $E0,$1C
           DEFB $81,$33   ; Glissando
        DEFB $22
           DEFB $81,$44   ; Glissando
        DEFB $28
           DEFB $81,$33   ; Glissando
           DEFB $85,$FF   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $05
        DEFB $11
           DEFB $81,$33   ; Glissando
        DEFB $10
        DEFB $05
           DEFB $81,$33   ; Glissando
        DEFB $11
        DEFB $82   ; End of Pattern
PAT2_3:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $E3,$10
           DEFB $85,$EE   ; Skew
           DEFB $87,$AA   ; SkewXOR
        DEFB $E0,$04
        DEFB $10
        DEFB $09
        DEFB $E1,$15
        DEFB $E3,$04
        DEFB $82   ; End of Pattern
PAT2_4:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $E3,$10
           DEFB $85,$EE   ; Skew
           DEFB $87,$AA   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$15
           DEFB $C1   ; Arpeggio
        DEFB $15
        DEFB $18
           DEFB $C0   ; Arpeggio
        DEFB $15
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $18
        DEFB $E1,$15
        DEFB $82   ; End of Pattern
PAT2_6:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
           DEFB $85,$EE   ; Skew
           DEFB $87,$AA   ; SkewXOR
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $13
        DEFB $11
        DEFB $82   ; End of Pattern
PAT2_7:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
           DEFB $85,$EE   ; Skew
           DEFB $87,$AA   ; SkewXOR
        DEFB $10
           DEFB $86       ; Phase effect
           DEFB $81,$44   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $E2,$21
           DEFB $81,$33   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $E1,$18
           DEFB $81,$02   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $10
        DEFB $E0,$80
        DEFB $82   ; End of Pattern
PAT2_8:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C1   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $E1,$10
        DEFB $E0,$1C
        DEFB $80
        DEFB $04
        DEFB $10
        DEFB $09
        DEFB $E1,$15
        DEFB $E3,$04
        DEFB $82   ; End of Pattern
PAT2_9:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $1F
        DEFB $80
        DEFB $1C
           DEFB $87,$EE   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $15
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $18
           DEFB $C0   ; Arpeggio
        DEFB $15
        DEFB $1A
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $18
        DEFB $E1,$15
        DEFB $82   ; End of Pattern
PAT2_10:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $E1,$10
           DEFB $C1   ; Arpeggio
        DEFB $E0,$1C
        DEFB $80
        DEFB $04
        DEFB $10
        DEFB $09
        DEFB $E1,$15
        DEFB $E3,$04
        DEFB $82   ; End of Pattern
PAT2_12:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
           DEFB $85,$EE   ; Skew
           DEFB $87,$AA   ; SkewXOR
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
        DEFB $10
           DEFB $C0   ; Arpeggio
        DEFB $0E
        DEFB $80
           DEFB $C2   ; Arpeggio
        DEFB $13
        DEFB $11
        DEFB $82   ; End of Pattern
PAT2_13:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $10
        DEFB $1F
        DEFB $80
        DEFB $1C
           DEFB $87,$EE   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $15
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $18
           DEFB $C0   ; Arpeggio
        DEFB $15
        DEFB $1A
           DEFB $86       ; Phase effect
           DEFB $C2   ; Arpeggio
        DEFB $E3,$15
        DEFB $82   ; End of Pattern
PAT2_14:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$12   ; Skew
           DEFB $87,$EE   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$28
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $29
        DEFB $10
        DEFB $13
        DEFB $11
        DEFB $82   ; End of Pattern
PAT2_15:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C1   ; Arpeggio
        DEFB $E0,$28
        DEFB $10
        DEFB $13
        DEFB $E1,$10
        DEFB $E0,$1C
        DEFB $80
        DEFB $04
        DEFB $10
        DEFB $09
        DEFB $E1,$15
        DEFB $E0,$28
        DEFB $1C
        DEFB $1F
        DEFB $1C
        DEFB $82   ; End of Pattern
PAT2_16:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$10
        DEFB $21
        DEFB $1A
        DEFB $10
        DEFB $1F
        DEFB $80
        DEFB $1C
           DEFB $87,$EE   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $15
           DEFB $C2   ; Arpeggio
        DEFB $15
        DEFB $18
           DEFB $C0   ; Arpeggio
        DEFB $15
        DEFB $1C
           DEFB $C2   ; Arpeggio
        DEFB $18
        DEFB $18
        DEFB $2B
        DEFB $21
        DEFB $82   ; End of Pattern
PAT2_17:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$12   ; Skew
           DEFB $87,$EE   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$28
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
        DEFB $11
        DEFB $10
        DEFB $0E
        DEFB $10
           DEFB $81,$12   ; Glissando
        DEFB $E1,$1C
           DEFB $81,$33   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $18
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$2B
        DEFB $80
        DEFB $82   ; End of Pattern
PAT2_18:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C2   ; Arpeggio
        DEFB $E0,$28
        DEFB $10
        DEFB $13
        DEFB $10
           DEFB $C2   ; Arpeggio
        DEFB $16
        DEFB $1C
        DEFB $80
        DEFB $04
        DEFB $10
        DEFB $09
        DEFB $E1,$15
        DEFB $E0,$28
        DEFB $1C
        DEFB $1F
        DEFB $1C
        DEFB $82   ; End of Pattern
PAT2_19:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $EF,$1C
        DEFB $82   ; End of Pattern
PAT2_20:
        DEFB 7    ; Pattern Tempo
           DEFB $86       ; Phase effect
           DEFB $81,$22   ; Glissando
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E5,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$15   ; Glissando
           DEFB $C2   ; Arpeggio
        DEFB $E1,$1C
           DEFB $86       ; Phase effect
           DEFB $81,$13   ; Glissando
        DEFB $1C
           DEFB $86       ; Phase effect
           DEFB $81,$33   ; Glissando
           DEFB $85,$00   ; Skew
           DEFB $C0   ; Arpeggio
        DEFB $1C
           DEFB $86       ; Phase effect
        DEFB $E0,$29
        DEFB $80
           DEFB $86       ; Phase effect
        DEFB $2D
        DEFB $80
        DEFB $82   ; End of Pattern
PAT2_21:
        DEFB 7    ; Pattern Tempo
           DEFB $81,$00   ; Glissando
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $E0,$10
        DEFB $10
        DEFB $13
        DEFB $E1,$10
           DEFB $C1   ; Arpeggio
        DEFB $E0,$1C
        DEFB $80
        DEFB $04
        DEFB $10
        DEFB $09
        DEFB $E1,$15
        DEFB $E0,$21
        DEFB $80
        DEFB $23
        DEFB $80
        DEFB $82   ; End of Pattern
PAT2_22:
        DEFB 7    ; Pattern Tempo
           DEFB $85,$AA   ; Skew
           DEFB $87,$24   ; SkewXOR
        DEFB $E0,$2D
        DEFB $80
           DEFB $85,$EE   ; Skew
           DEFB $87,$00   ; SkewXOR
        DEFB $2D
        DEFB $80
           DEFB $85,$FF   ; Skew
           DEFB $87,$00   ; SkewXOR
           DEFB $C0   ; Arpeggio
        DEFB $2D
        DEFB $80
           DEFB $C0   ; Arpeggio
        DEFB $2D
        DEFB $E8,$80
        DEFB $82   ; End of Pattern
PERC_PATTERNS:
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM0
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM11
              DEFW      DRM2
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM5
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM7
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM1
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM10
              DEFW      DRM3
              DEFW      DRM21
              DEFW      DRM0

DRM0:
        DEFB $10
        DEFB $00   ; End of pattern
DRM1:
        DEFB $83
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $84
        DEFB $02
        DEFB $82
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $00   ; End of pattern
DRM2:
        DEFB $83
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $84
        DEFB $02
        DEFB $82
        DEFB $02
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $83
        DEFB $01
        DEFB $00   ; End of pattern
DRM3:
        DEFB $83
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $84
        DEFB $02
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $00   ; End of pattern
DRM5:
        DEFB $83
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $84
        DEFB $02
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $84
        DEFB $84
        DEFB $84
        DEFB $00   ; End of pattern
DRM7:
        DEFB $83
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $84
        DEFB $02
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
DRM10:
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $84
        DEFB $02
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $00   ; End of pattern
DRM11:
        DEFB $01
        DEFB $82
        DEFB $82
        DEFB $82
        DEFB $84
        DEFB $02
        DEFB $82
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $01
        DEFB $82
        DEFB $01
        DEFB $00   ; End of pattern
DRM21:
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $83
        DEFB $84
        DEFB $02
        DEFB $83
        DEFB $02
        DEFB $83
        DEFB $82
        DEFB $84
        DEFB $03
        DEFB $00   ; End of pattern
