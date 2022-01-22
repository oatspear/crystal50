; Stat Levels

; each stat level byte is broken down into
;   top nybble: the actual stat level
;   bottom nybble: effect timer (turns remaining)

lda_stat_level: MACRO
  ld a, \1
  and $f0 ; get the top nybble
  swap a
ENDM

lda_stat_turns: MACRO
  ld a, \1
  and $f ; get the bottom nybble
ENDM

dec_stat_turns: MACRO
  dec \1
ENDM

; \1: destination
; \2: source of stat level (optional, defaults to a)
; \3: number of turns
apply_stat_level: MACRO
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

reset_stat_level: MACRO
  ld \1, (BASE_STAT_LEVEL << 4)
ENDM
