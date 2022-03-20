BattleCommand_Spite:
; spite

	ld a, [wAttackMissed]
	and a
	jp nz, .failed

	ld hl, wEnemyMonEnergy
	ldh a, [hBattleTurn]
	and a
	jr z, .got_energy
	ld hl, wBattleMonEnergy

.got_energy
	ld b, ENERGY_5_MOVES
	ld a, [hl]
	cp b
	jr nc, .deplete_pp
	ld b, a
.deplete_pp
	sub b
	ld [hl], a
	push af
	ld a, MON_ENERGY
	call OpponentPartyAttr
	ld d, b
	pop af
	ld e, a

	ldh a, [hBattleTurn]
	and a
	jr nz, .not_wildmon
	ld a, [wBattleMode]
	dec a
	jr z, .depleted
	; TODO check if wWildMonEnergy is needed
	ld [hl], e
.depleted
	push de
	call AnimateCurrentMove
	pop de
	ld a, d
	ld [wTextDecimalByte], a
	ld hl, SpiteEffectText
	jp StdBattleTextbox

.failed
	jp PrintDidntAffect2
