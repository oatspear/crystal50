BattleCommand_FocusEnergy:
; focusenergy

	ld hl, wPlayerSubStatus4
	ld de, wPlayerFocusEnergyCount
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemySubStatus4
	ld de, wEnemyFocusEnergyCount
.ok
	bit SUBSTATUS_FOCUS_ENERGY, [hl]
	jr nz, .already_pumped
	set SUBSTATUS_FOCUS_ENERGY, [hl]
	ld a, 5
	ld [de], a
	call AnimateCurrentMove
	ld hl, GettingPumpedText
	jp StdBattleTextbox

.already_pumped
	call AnimateFailedMove
	jp PrintButItFailed
