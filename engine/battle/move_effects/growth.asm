BattleCommand_Growth:
; growth

; Raise Speed only under harsh sunlight.

	ld a, [wBattleWeather]
	cp WEATHER_SUN
	ret nz

	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld bc, wEnemyStatLevels

.go

; If Speed cannot be increased, don't.

	; bc = attack
	inc bc ; defense
	inc bc ; speed
	lda_stat_level [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

  ; call AnimateCurrentMove

  call BattleCommand_SpeedUp2
  jp BattleCommand_StatUpMessage

.cantraise

	ld b, SPEED + 1
	call GetStatName
	; call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextbox
