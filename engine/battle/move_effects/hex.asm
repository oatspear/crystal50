; Receive move power d, player level e, enemy defense c and player attack b.
; Must return the same thing.

BattleCommand_Hex:
; hex

  ld a, BATTLE_VARS_STATUS_OPP
  call GetBattleVar
  and a
  ret z ; unchanged if not affected by status conditions

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
