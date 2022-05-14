BattleCommand_Pluck:
; pluck

	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

; The enemy needs to have an item to steal.

	call .enemyitem
	ld a, [hl]
	and a
	ret z

; Can only steal berries.

	ld [wNamedObjectIndex], a
	ld d, a
	call ItemIsEdible ; item index is in b
	ret nc

	ld a, [wEffectFailed]
	and a
	ret nz

	ld a, [wLinkMode]
	and a
	jr z, .stealenemyitem

	ld a, [wBattleMode]
	dec a
	ret z

.stealenemyitem
	call .enemyitem
	xor a
	ld [hl], a
	ld [de], a

	ld hl, PluckBerryEffects
	ld a, b
	ld b, 0
	ld c, a
	sla c ; 2 bytes
	add hl, bc
	jp hl

  ; FIXME from this point onward
	call .playeritem
	ld a, [wNamedObjectIndex]
	ld [hl], a
	ld [de], a
	jr .stole

.enemy

; The enemy can't already have an item.

	call .enemyitem
	ld a, [hl]
	and a
	ret nz

; The player must have an item to steal.

	call .playeritem
	ld a, [hl]
	and a
	ret z

; Can't steal mail!

	ld [wNamedObjectIndex], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wEffectFailed]
	and a
	ret nz

; If the enemy steals your item,
; it's gone for good if you don't get it back.

	call .playeritem
	xor a
	ld [hl], a
	ld [de], a

	call .enemyitem
	ld a, [wNamedObjectIndex]
	ld [hl], a
	ld [de], a

.stole
	call GetItemName
	ld hl, StoleText
	jp StdBattleTextbox

.playeritem
	ld a, 1
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	ret

.enemyitem
	ld a, 1
	call OTPartyAttr
	ld d, h
	ld e, l
	ld hl, wEnemyMonItem
	ret

ItemIsEdible:
	ld a, d
	ld hl, EdibleItems
	ld de, 1
	jp IsInArray

EdibleItems:
  db ORAN_BERRY
  db SITRUS_BERRY
  db LUM_BERRY
	db PECHA_BERRY
	db CHERI_BERRY
  db CHESTO_BERRY
	db ASPEAR_BERRY
  db RAWST_BERRY
	db PERSIM_BERRY
	db LEPPA_BERRY
	db -1

PluckBerryEffects:
	dw PluckOranBerry
	dw PluckSitrusBerry
	dw PluckLumBerry
	dw PluckPechaBerry
	dw PluckCheriBerry
	dw PluckChestoBerry
	dw PluckAspearBerry
	dw PluckRawstBerry
	dw PluckPersimBerry
	dw PluckLeppaBerry

PluckOranBerry:
; EIGHTH_MAX_HP
	ld hl, GetEighthMaxHP
	call CallBattleCore
	; amount in bc
	jr PluckRecoverHp

PluckSitrusBerry:
; QUARTER_MAX_HP
	ld hl, GetQuarterMaxHP
	call CallBattleCore
	; amount in bc
	; fallthrough

PluckRecoverHp:
	ld de, wBattleMonHP
	ld hl, wBattleMonMaxHP
	ldh a, [hBattleTurn]
	and a
	jr z, .got_hp
	ld de, wEnemyMonHP
	ld hl, wEnemyMonMaxHP

.got_hp
	push hl
	push de
	push bc
	ld c, 2
	call CompareBytes
	pop bc
	pop de
	pop hl
	jp z, .hp_full

	; the following routines work on the opposing mon
	; switch from user's turn to opponent
	call BattleCommand_SwitchTurn
	ld hl, ItemRecoveryAnim
	call CallBattleCore
	ld hl, RestoreHP
	call CallBattleCore
	; get back to user's turn
	call BattleCommand_SwitchTurn
	call UpdateUserInParty
	call RefreshBattleHuds

	; get name of item in wNamedObjectIndex
	call GetItemName
	ld hl, RecoveredUsingText
	jp StdBattleTextbox

.hp_full
	ld hl, HPIsFullText
	jp StdBattleTextbox

PluckLumBerry:
	ld b, ALL_STATUS
	jr PluckHealStatus

PluckPechaBerry:
	ld b, 1 << PSN
	jr PluckHealStatus

PluckCheriBerry:
	ld b, 1 << PAR
	jr PluckHealStatus

PluckChestoBerry:
	ld b, SLP
	jr PluckHealStatus

PluckAspearBerry:
	ld b, 1 << FRZ
	jr PluckHealStatus

PluckRawstBerry:
	ld b, 1 << BRN
	; fallthrough

PluckHealStatus:
	; status to heal already in b
	; switch from user's turn to opponent
	call BattleCommand_SwitchTurn
	ld hl, HealEnemyMonStatus
	call CallBattleCore
	; not sure if flags are preserved here
	ret c ; return if there is nothing to heal
	ld hl, ItemRecoveryAnim
	call CallBattleCore
	; get back to user's turn
	call BattleCommand_SwitchTurn
	call RefreshBattleHuds
	; get name of item in wNamedObjectIndex
	call GetItemName
	ld hl, RecoveredUsingText
	jp StdBattleTextbox

PluckPersimBerry:
	; TODO see core/UseConfusionHealingItem
	ld b, ALL_STATUS
	jr PluckHealStatus

PluckLeppaBerry:
	; TODO recover energy
	ld b, ALL_STATUS
	jr PluckHealStatus
