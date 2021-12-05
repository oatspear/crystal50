; Receives move power d, player level e, enemy defense c and player attack b.
; Must return the same thing.

BattleCommand_Facade:
; facade

  ld a, BATTLE_VARS_STATUS
  call GetBattleVar

; .check_psn
  bit PSN, a
  jr nz, .double_power

.check_prz
  bit PRZ, a
  jr nz, .double_power

.check_brn
  bit BRN, a

; Return of there is none of the three status conditions.
  ret z

; Double attack if burned to compensate.
; Value is already truncated to 8 bits.
; It was divided by 4 in damagestats if greater than 255.
; MAX_STAT_VALUE is 999, so if a 16-bit value was truncated, b < 250.
; Doubling causes carry if b >= 128,
;    - either ATK in [128, 255],
;    - or ATK in [512, 999] (because of division by 4 to truncate)

  ld a, b
  sla a
  jr nc, .no_carry

  ld hl, wTurnBasedFlags2
  bit BIT_DAMAGE_STATS_TRUNCATED, [hl]
  jr z, .not_truncated

  ; if there's carry and stat was truncated, ATK in [512, 999]
  ; doubling will set to the cap of 999
  ; just set b to 249 = 999/4
  ld b, 249
  jr .double_power

.not_truncated
  ; ATK in [128, 255], we must truncate both stats
  ld l, a
  ld h, 1
  ld b, 0
  call TruncateHL_BC
  jr .double_power

.no_carry
  ld b, a

.double_power
  ld a, d
  add a
  ld d, a
  ret
