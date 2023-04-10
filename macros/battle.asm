; Stat Levels

; each stat level byte is broken down into
;   top nybble: the actual stat level
;   bottom nybble: effect timer (turns remaining)

MACRO lda_stat_level
  ld a, \1
  and $f0 ; get the top nybble
  swap a
ENDM

MACRO lda_stat_turns
  ld a, \1
  and $f ; get the bottom nybble
ENDM

MACRO dec_stat_turns
  dec \1
ENDM

; \1: destination
; \2: source of stat level (optional, defaults to a)
; \3: number of turns
MACRO apply_stat_level
if _NARG > 2
  ld a, \2
  swap a
  or \3
else
  swap a
  or \2
endc
  ld \1, a
ENDM

MACRO reset_stat_level
  ld \1, (BASE_STAT_LEVEL << 4)
ENDM
