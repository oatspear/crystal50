; Receive move power d, player level e, enemy defense c and player attack b.
; Must return the same thing.

BattleCommand_Hex:
; hex

  ld a, BATTLE_VARS_STATUS_OPP
  call GetBattleVar
  and a
  ret z ; unchanged if not affected by status conditions

; Double the move's power.
  sla d

; Set a different animation.
  ld a, TRUE
  ld [wBattleAnimParam], a
  ret
