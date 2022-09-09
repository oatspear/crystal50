BattleCommand_Endure:
; endure

	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	set SUBSTATUS_ENDURE, [hl]

	call AnimateCurrentMove

	ld hl, BracedItselfText
	jp StdBattleTextbox

BattleCommand_Endure_Damage:
; reaction effect of endure to halve incoming taking damage
; called during the attacker's turn

	call BattleCommand_SwitchTurn
; do not consume energy if there is not enough PP
	ld b, 0
	ld c, ENERGY_DRAIN_ENDURE
	call ConsumePP
	jr c, .not_enough_pp

; endure: halve incoming damage, ensure at least 1 damage
	ld a, [wCurDamage]
	ld b, a
	ld a, [wCurDamage + 1]
	ld c, a
	scf
	call HalveBC
	ld a, b
	ld [wCurDamage], a
	ld a, c
	ld [wCurDamage + 1], a

	call BattleCommand_SwitchTurn
	xor a
	ret

.not_enough_pp
	call BattleCommand_SwitchTurn
	scf
	ret

BattleCommand_Endure_OnHit:
; raise offensive stats after taking damage
; called during the attacker's turn

	call BattleCommand_SwitchTurn
	call BattleCommand_AttackUp         ; attackup
	call BattleCommand_StatUpMessage    ; statupmessage
	call BattleCommand_SpecialAttackUp  ; specialattackup
	call BattleCommand_StatUpMessage    ; statupmessage
	call BattleCommand_SpeedUp          ; speedup
	call BattleCommand_StatUpMessage    ; statupmessage
	call BattleCommand_SwitchTurn
	ret
