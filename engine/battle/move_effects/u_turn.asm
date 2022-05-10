BattleCommand_UTurn:
; uturn

  ldh a, [hBattleTurn]
  and a
  jp nz, .Enemy

; Switch if there are other 'mons fit to fight
  call CheckAnyOtherAlivePartyMons
  ret z

  call UpdateBattleMonInParty
  ; call AnimateCurrentMove

  ld c, 16
  call DelayFrames

; Transition into switchmon menu
  call LoadStandardMenuHeader
  farcall SetUpBattlePartyMenu

  farcall ForcePickSwitchMonInBattle

; Return to battle scene
  call ClearPalettes
  farcall _LoadBattleFontsHPBar
  call CloseWindow
  call ClearSprites
  hlcoord 1, 0
  lb bc, 4, 10
  call ClearBox
  ld b, SCGB_BATTLE_COLORS
  call GetSGBLayout
  call SetPalettes

  call UTurn_LinkPlayerSwitch

; Mobile link battles handle entrances differently
  farcall CheckMobileBattleError
  jp c, EndMoveEffect

  ld hl, PassedBattleMonEntrance
  call CallBattleCore
  ret

.Enemy:
; Wildmons don't have anything to switch to
  ld a, [wBattleMode]
  dec a ; WILDMON
  ret z

  call CheckAnyOtherAliveEnemyMons
  ret z

  call UpdateEnemyMonInParty
  ; call AnimateCurrentMove
  call UTurn_LinkEnemySwitch

; Mobile link battles handle entrances differently
  farcall CheckMobileBattleError
  jp c, EndMoveEffect

; Passed enemy PartyMon entrance
  ld hl, PassedEnemyMonEntrance
  call CallBattleCore
  ret


UTurn_LinkPlayerSwitch:
  ld a, [wLinkMode]
  and a
  ret z

  ld a, BATTLEPLAYERACTION_USEITEM
  ld [wBattlePlayerAction], a

  call LoadStandardMenuHeader
  ld hl, LinkBattleSendReceiveAction
  call CallBattleCore
  call CloseWindow

  xor a ; BATTLEPLAYERACTION_USEMOVE
  ld [wBattlePlayerAction], a
  ret

UTurn_LinkEnemySwitch:
  ld a, [wLinkMode]
  and a
  ret z

  call LoadStandardMenuHeader
  ld hl, LinkBattleSendReceiveAction
  call CallBattleCore

  ld a, [wOTPartyCount]
  add BATTLEACTION_SWITCH1
  ld b, a
  ld a, [wBattleAction]
  cp BATTLEACTION_SWITCH1
  jr c, .u_turn
  cp b
  jr c, .switch

.u_turn
  ld a, [wCurOTMon]
  add BATTLEACTION_SWITCH1
  ld [wBattleAction], a
.switch
  jp CloseWindow


CheckAnyOtherAlivePartyMons:
  ld hl, wPartyMon1HP
  ld a, [wPartyCount]
  ld d, a
  ld a, [wCurBattleMon]
  ld e, a
  jr CheckAnyOtherAliveMons

CheckAnyOtherAliveEnemyMons:
  ld hl, wOTPartyMon1HP
  ld a, [wOTPartyCount]
  ld d, a
  ld a, [wCurOTMon]
  ld e, a
  ; fallthrough

CheckAnyOtherAliveMons:
; Check for nonzero HP starting from partymon
; HP at hl for d partymons, besides current mon e.

; Return nz if any are alive.

  xor a
  ld b, a
  ld c, a
.loop
  ld a, c
  cp d
  jr z, .done
  cp e
  jr z, .next

  ld a, [hli]
  or b
  ld b, a
  ld a, [hld]
  or b
  ld b, a

.next
  push bc
  ld bc, PARTYMON_STRUCT_LENGTH
  add hl, bc
  pop bc
  inc c
  jr .loop

.done
  ld a, b
  and a
  ret
