; Receive move power d, player level e, enemy defense c and player attack b.
; Must return the same thing.

BattleCommand_Revenge:
; revenge

  ldh a, [hBattleTurn]
  and a
  ld a, [wTurnBasedFlags]
  jr nz, .enemy
; .player
  and THIS_TURN_PLAYER_TOOK_DIRECT_DAMAGE
  ret z ; no damage taken
  jr .revenge

.enemy
  and THIS_TURN_ENEMY_TOOK_DIRECT_DAMAGE
  ret z ; no damage taken

.revenge
; Double the move's power.
  sla d

; Set a different animation.
  ld a, TRUE
  ld [wBattleAnimParam], a
  ret
