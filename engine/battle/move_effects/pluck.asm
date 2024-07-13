BattleCommand_Pluck:
; pluck

	; uncomment if we want effect based on chance
	; ld a, [wEffectFailed]
	; and a
	; ret nz

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
	ld hl, EdibleItems
	call IsInByteArray ; item index is returned in b
	ret nc

	ld a, [wLinkMode]
	and a
	jr z, .stealenemyitem

	ld a, [wBattleMode]
	dec a
	ret z

.stealenemyitem
	call .enemyitem  ; preserves bc
	xor a
	ld [hl], a
	ld [de], a
	jr .steal_berry

.enemy

; The player must have an item to steal.

	call .playeritem
	ld a, [hl]
	and a
	ret z

; Can only steal berries.

	ld [wNamedObjectIndex], a
	ld hl, EdibleItems
	call IsInByteArray ; item index is returned in b
	ret nc

; If the enemy steals your item,
; it's gone for good if you don't get it back.

	call .playeritem  ; preserves bc
	xor a
	ld [hl], a
	ld [de], a
	; fallthrough

.steal_berry
	call GetItemName  ; preserves hl, bc
	push bc
	ld hl, StoleText
	call StdBattleTextbox
	pop bc

	ld hl, PluckBerryEffects
	ld a, b
	add a  ; each entry is 2 bytes
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.playeritem
	ld a, 1
	call BattlePartyAttr  ; preserves bc
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	ret

.enemyitem
	ld a, 1
	call OTPartyAttr  ; preserves bc
	ld d, h
	ld e, l
	ld hl, wEnemyMonItem
	ret


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
	; call GetItemName
	ld hl, RecoveredSomeHPText
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
	; call GetItemName
	ld hl, BecameHealthyText
	jp StdBattleTextbox

PluckPersimBerry:
	ld a, BATTLE_VARS_SUBSTATUS3
	call GetBattleVarAddr
	bit SUBSTATUS_CONFUSED, a
	ret z

	res SUBSTATUS_CONFUSED, [hl]
	; get name of item in wNamedObjectIndex
	; call GetItemName
	ld hl, ItemRecoveryAnim
	call CallBattleCore
	ld hl, TargetConfusedNoMoreText
	jp StdBattleTextbox

PluckLeppaBerry:
	ld hl, wPlayerMaxEnergy
	ld de, wBattleMonEnergy
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld hl, wEnemyMaxEnergy
	ld de, wEnemyMonEnergy

.go
	ld a, [hl]
	ld c, a

	add ENERGY_RECOVERY_LEPPA_BERRY
	cp c
	jr c, .recover
	ld a, c

.recover
	ld [de], a
	; get name of item in wNamedObjectIndex
	; call GetItemName
	call BattleCommand_SwitchTurn
	ld hl, ItemRecoveryAnim
	call CallBattleCore
	call BattleCommand_SwitchTurn
	ld hl, RecoveredSomePPText
	jp StdBattleTextbox
