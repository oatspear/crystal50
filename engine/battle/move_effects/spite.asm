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
	ld b, ENERGY_DRAIN_SPITE
	ld a, [hl]
	cp b
	jr nc, .deplete_pp
	ld b, a
.deplete_pp
	sub b
	ld [hl], a

	push bc
	call AnimateCurrentMove
	pop bc
	ld a, b
	ld [wTextDecimalByte], a
	ld hl, SpiteEffectText
	jp StdBattleTextbox

.failed
	jp PrintDidntAffect2
