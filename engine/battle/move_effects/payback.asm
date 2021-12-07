; Receive move power d, player level e, enemy defense c and player attack b.
; Must return the same thing.

BattleCommand_Payback:
; payback

  ldh a, [hBattleTurn]
  and a
  ld a, [wEnemyGoesFirst]
  jr nz, .enemy

; .player
  and a
  ret z ; 0 if player went first
  ld hl, wEnemyIsSwitching
  jr .switch

.enemy
  and a
  ret nz ; 1 if enemy went first
  ld hl, wPlayerIsSwitching

.switch
  ld a, [hl]
  and a
  ret nz ; switching does not trigger the effect

; Double the move's power.
  sla d

; Set a different animation.
  ld a, TRUE
  ld [wBattleAnimParam], a
  ret
