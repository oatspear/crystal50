BattleCommand_Spikes:
; spikes

	ld hl, wEnemyScreens
	ldh a, [hBattleTurn]
	and a
	jr z, .got_screens
	ld hl, wPlayerScreens
.got_screens

; Fails if spikes are already down and at three layers.

	ld a, [hl]
	and SCREENS_SPIKES_MASK
	cp SPIKES_3_LAYERS
	jp z, FailMove

; Nothing else stops it from working.
; Bits are either 00, 01 or 10.
; If-then-else with `jr cc, n` costs less than `set bit, [hl]` twice, I think.

	bit SCREENS_SPIKES, a
	jr nz, .second_bit

	set SCREENS_SPIKES, [hl]
	jr .animate

.second_bit
	set SCREENS_SPIKES2, [hl]
	res SCREENS_SPIKES, [hl]

.animate
	call AnimateCurrentMove

	ld hl, SpikesText
	jp StdBattleTextbox
