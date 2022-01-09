BattleCommand_Roost:
; roost

  ld de, wBattleMonType1
  ldh a, [hBattleTurn]
  and a
  jr z, .go
  ld de, wEnemyMonType1

.go

; The user loses its Flying-type.
; Note: there are no pure Flying-types in this generation, so we can simply
;   replace the Flying-type temporarily with its secondary type.
; Store substatus flags to tell which type got replaced.

; FIXME: if Burn Up (BURN_UP) is added.

  ld a, BATTLE_VARS_SUBSTATUS5
  call GetBattleVarAddr

	ld a, [de]
	cp FLYING
	jr z, .replace_type1
	inc de
	ld a, [de]
	cp FLYING
  ret nz

; .replace_type2

  set SUBSTATUS_ROOST_TYPE2, [hl]
  ld h, d
  ld l, e
  dec hl
  ld a, [hl]
  ld [de], a
  ret

.replace_type1

	set SUBSTATUS_ROOST_TYPE1, [hl]
  ld h, d
  ld l, e
  inc hl
  ld a, [hl]
  ld [de], a
  ret
