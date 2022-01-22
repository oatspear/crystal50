BattleCommand_CalmMind:
; calmmind

	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld bc, wEnemyStatLevels

.go

; If no stats can be increased, don't.

; Special Attack
  inc bc ; defense
  inc bc ; speed
  inc bc ; special attack
	lda_stat_level [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise

; Special Defense
  inc bc ; special defense
	lda_stat_level [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

.raise

; Raise Special Attack and Special Defense.

  call AnimateCurrentMove
  call BattleCommand_SpecialAttackUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialDefenseUp
	jp BattleCommand_StatUpMessage

.cantraise

; Can't raise either stat.

	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextbox
