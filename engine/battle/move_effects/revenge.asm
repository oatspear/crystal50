; Receive move power d, player level e, enemy defense c and player attack b.
; Must return the samr thing.

BattleCommand_Revenge:
; revenge

  ldh a, [hBattleTurn]
  and a
  ld a, THIS_TURN_ENEMY_TOOK_DIRECT_DAMAGE
  jp nz, .got_flag
; .player_turn
  ld a, THIS_TURN_PLAYER_TOOK_DIRECT_DAMAGE

.got_flag
  and [wTurnBasedFlags]
  ret z ; no damage taken

; Double the move's power.
  sla d

; Set a different animation.
  ld a, TRUE
  ld [wBattleAnimParam], a
  ret
