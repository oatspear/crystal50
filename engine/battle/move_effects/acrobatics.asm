; Receive move power d, player level e, enemy defense c and player attack b.
; Must return the same thing.

BattleCommand_Acrobatics:
; acrobatics

  ld hl, wEnemyMonItem
  ldh a, [hBattleTurn]
  and a
  jr nz, .got_item
  ld hl, wBattleMonItem

.got_item
  ld a, [hl]
	and a
	ret nz ; holding an item

; Double the move's power.
  ld a, d
  sla d
  and %10000000
  jr z, .no_overflow
  ld d, $ff

; Set a different animation.
.no_overflow
  ld a, TRUE
  ld [wBattleAnimParam], a
  ret
