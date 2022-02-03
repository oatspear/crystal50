; This is supposed to be in the same bank as section "Evolution and Attacks"

TryEvolveWildMon:
; assumes species in wTempWildMonSpecies
; assumes level in wCurPartyLevel
	ld a, [wTempWildMonSpecies]
.loop
	dec a
	ld c, a
	ld b, 0
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
  ld a, [hli]
  ld h, [hl]
  ld l, a
  ld a, [wCurPartyLevel]
	ld b, a
	inc b

.loop2
	ld a, [hli]
	and a
	ret z ; no more evolutions
  cp EVOLVE_HOLD
  jr z, .by_item_level
  cp EVOLVE_LEVEL
  jr z, .by_level
  cp EVOLVE_STAT
  jr nz, .skip2
  inc hl
.skip2
  inc hl
  inc hl
	jr .loop2

.by_item_level
  inc hl ; skip item
.by_level
  ld a, [hli] ; got level
  cp b
  ret nc ; has not reached evolution level yet
  ld a, [hl] ; got species
; write the new species in place of the previous one
  ld [wTempWildMonSpecies], a
; go back to see if there are further evolutions
  jr .loop
