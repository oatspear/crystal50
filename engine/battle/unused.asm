; This file holds unused code that might still be useful in the long run.

BadgeStatBoosts:
; Raise the stats of the battle mon in wBattleMon
; depending on which badges have been obtained.

; Every other badge boosts a stat, starting from the first.
; GlacierBadge also boosts Special Defense, although the relevant code is buggy (see below).

; 	ZephyrBadge:  Attack
; 	PlainBadge:   Speed
; 	MineralBadge: Defense
; 	GlacierBadge: Special Attack and Special Defense

; The boosted stats are in order, except PlainBadge and MineralBadge's boosts are swapped.

	ld a, [wLinkMode]
	and a
	ret nz

	ld a, [wInBattleTowerBattle]
	and a
	ret nz

	ld a, [wJohtoBadges]

; Swap badges 3 (PlainBadge) and 5 (MineralBadge).
	ld d, a
	and (1 << PLAINBADGE)
	add a
	add a
	ld b, a
	ld a, d
	and (1 << MINERALBADGE)
	rrca
	rrca
	ld c, a
	ld a, d
	and ((1 << ZEPHYRBADGE) | (1 << HIVEBADGE) | (1 << FOGBADGE) | (1 << STORMBADGE) | (1 << GLACIERBADGE) | (1 << RISINGBADGE))
	or b
	or c
	ld b, a

	ld hl, wBattleMonAttack
	ld c, 4
.CheckBadge:
	ld a, b
	srl b
	push af
	call c, BoostStat
	pop af
	inc hl
	inc hl
; Check every other badge.
	srl b
	dec c
	jr nz, .CheckBadge
; Check GlacierBadge again for Special Defense.
	srl a
	call c, BoostStat
	ret


BoostStat:
; Raise stat at hl by 1/8.

	ld a, [hli]
	ld d, a
	ld e, [hl]
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld a, [hl]
	add e
	ld [hld], a
	ld a, [hl]
	adc d
	ld [hli], a

; Cap at 999.
	ld a, [hld]
	sub LOW(MAX_STAT_VALUE)
	ld a, [hl]
	sbc HIGH(MAX_STAT_VALUE)
	ret c
	ld a, HIGH(MAX_STAT_VALUE)
	ld [hli], a
	ld a, LOW(MAX_STAT_VALUE)
	ld [hld], a
	ret





BattleCommand_CheckObedience:
; checkobedience

	; Enemy can't disobey
	ldh a, [hBattleTurn]
	and a
	ret nz

	call CheckUserIsCharging
	ret nz

	; If we've already checked this turn
	ld a, [wAlreadyDisobeyed]
	and a
	ret nz

	xor a
	ld [wAlreadyDisobeyed], a

	; No obedience in link battles
	; (since no handling exists for enemy)
	ld a, [wLinkMode]
	and a
	ret nz

	ld a, [wInBattleTowerBattle]
	and a
	ret nz

	; If the monster's id doesn't match the player's,
	; some conditions need to be met.
	ld a, MON_ID
	call BattlePartyAttr

	ld a, [wPlayerID]
	cp [hl]
	jr nz, .obeylevel
	inc hl
	ld a, [wPlayerID + 1]
	cp [hl]
	ret z

.obeylevel
	; The maximum obedience level is constrained by owned badges:
	ld hl, wJohtoBadges

	; risingbadge
	bit RISINGBADGE, [hl]
	ld a, MAX_LEVEL + 1
	jr nz, .getlevel

	; stormbadge
	bit STORMBADGE, [hl]
	ld a, 70
	jr nz, .getlevel

	; fogbadge
	bit FOGBADGE, [hl]
	ld a, 50
	jr nz, .getlevel

	; hivebadge
	bit HIVEBADGE, [hl]
	ld a, 30
	jr nz, .getlevel

	; no badges
	ld a, 10

.getlevel
; c = obedience level
; d = monster level
; b = c + d

	ld b, a
	ld c, a

	ld a, [wBattleMonLevel]
	ld d, a

	add b
	ld b, a

; No overflow (this should never happen)
	jr nc, .checklevel
	ld b, $ff

.checklevel
; If the monster's level is lower than the obedience level, it will obey.
	ld a, c
	cp d
	ret nc

; Random number from 0 to obedience level + monster level
.rand1
	call BattleRandom
	swap a
	cp b
	jr nc, .rand1

; The higher above the obedience level the monster is,
; the more likely it is to disobey.
	cp c
	ret c

; Sleep-only moves have separate handling, and a higher chance of
; being ignored. Lazy monsters like their sleep.
	call IgnoreSleepOnly
	ret c

; Another random number from 0 to obedience level + monster level
.rand2
	call BattleRandom
	cp b
	jr nc, .rand2

; A second chance.
	cp c
	jr c, .UseInstead

; No hope of using a move now.

; b = number of levels the monster is above the obedience level
	ld a, d
	sub c
	ld b, a

; The chance of napping is the difference out of 256.
	call BattleRandom
	swap a
	sub b
	jr c, .Nap

; The chance of not hitting itself is the same.
	cp b
	jr nc, .DoNothing

	ld hl, WontObeyText
	call StdBattleTextbox
	call HitConfusion
	jp .EndDisobedience

.Nap:
	ld a, SLP_BIT | 1 ; SLP for 2 turns (this and next)
	ld [wBattleMonStatus], a

	ld hl, BeganToNapText
	jr .Print

.DoNothing:
	; 4 random choices
	call BattleRandom
	and %11

	ld hl, LoafingAroundText
	and a ; 0
	jr z, .Print

	ld hl, WontObeyText
	dec a ; 1
	jr z, .Print

	ld hl, TurnedAwayText
	dec a ; 2
	jr z, .Print

	ld hl, IgnoredOrdersText

.Print:
	call StdBattleTextbox
	jp .EndDisobedience

.UseInstead:
; Can't use another move if the monster only has one!
	ld a, [wBattleMonMoves + 1]
	and a
	jr z, .DoNothing

; Don't bother trying to handle Disable.
	ld a, [wDisabledMove]
	and a
	jr nz, .DoNothing

; Make sure we can actually use the move once we get there.
	ld a, 1
	ld [wAlreadyDisobeyed], a

	ld a, [w2DMenuNumRows]
	ld b, a

; Save the move we originally picked for afterward.
	ld a, [wCurMoveNum]
	ld c, a
	push af

.RandomMove:
	call BattleRandom
	maskbits NUM_MOVES

	cp b
	jr nc, .RandomMove

; Not the move we were trying to use.
	cp c
	jr z, .RandomMove

; Make sure it has PP.
	ld [wCurMoveNum], a
	ld hl, wBattleMonPP
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	and PP_MASK
	ld e, a
	ld a, [wBattleMonEnergy]
	cp e
	jr nc, .use_another_move
	ld a, STRUGGLE
	ld [wCurPlayerMove], a
	jr .move_registered

.use_another_move
	ld a, [wCurMoveNum]
	ld c, a
	ld b, 0
	ld hl, wBattleMonMoves
	add hl, bc
	ld a, [hl]
	ld [wCurPlayerMove], a

.move_registered
	call SetPlayerTurn
	call UpdateMoveData
	call DoMove

; Restore original move choice.
	pop af
	ld [wCurMoveNum], a

.EndDisobedience:
	xor a
	ld [wLastPlayerMove], a
	ld [wLastPlayerCounterMove], a

	; Break Encore too.
	ld hl, wPlayerSubStatus5
	res SUBSTATUS_ENCORED, [hl]
	xor a
	ld [wPlayerEncoreCount], a

	jp EndMoveEffect

IgnoreSleepOnly:
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar

	; Sleep Talk bypasses sleep.
	cp SLEEP_TALK
	jr z, .CheckSleep
	and a
	ret

.CheckSleep:
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and SLP_BIT
	ret z

; 'ignored orders…sleeping!'
	ld hl, IgnoredSleepingText
	call StdBattleTextbox

	call EndMoveEffect

	scf
	ret
