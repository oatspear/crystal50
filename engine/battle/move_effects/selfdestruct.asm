BattleCommand_Selfdestruct:
	farcall StubbedTrainerRankings_Selfdestruct
	ld hl, wBattleMonMaxHP
	ldh a, [hBattleTurn]
	and a
	jr z, .got_hp
	ld hl, wEnemyMonMaxHP
.got_hp
; Hack: this should have been 80% Max. HP recoil damage.
; We will simplify and just get 13/16, which is slightly more (0.8125).
	ld a, [hli]
	ld b, a
	ld a, [hld]
	ld c, a
; divide by 2
	srl b
	rr c
; got 8/16
	ld e, c
	ld d, b
; divide by 4
	srl b
	rr c
; got 12/16
	add de, bc
; divide by 16
	srl b
	rr c
	srl b
	rr c
; got 13/16
	add bc, de
.got_quotient
	ld a, b
	or c
	jr nz, .min_damage
	inc c
.min_damage
	ld a, [hli]
	ld [wHPBuffer1 + 1], a
	ld a, [hl]
	ld [wHPBuffer1], a
	dec hl
	dec hl
	ld a, [hl]
	ld [wHPBuffer2], a
	sub c
	ld [hld], a
	ld [wHPBuffer3], a
	ld a, [hl]
	ld [wHPBuffer2 + 1], a
	sbc b
	ld [hl], a
	ld [wHPBuffer3 + 1], a
	jr nc, .dont_ko
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wHPBuffer3
	ld [hli], a
	ld [hl], a
.dont_ko
	hlcoord 10, 9
	ldh a, [hBattleTurn]
	and a
	ld a, 1
	jr z, .animate_hp_bar
	hlcoord 2, 2
	xor a
.animate_hp_bar
	ld [wWhichHPBar], a
	predef AnimateHPBar
	call RefreshBattleHuds
	ld hl, RecoilText
	jp StdBattleTextbox
