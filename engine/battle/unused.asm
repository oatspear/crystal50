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
