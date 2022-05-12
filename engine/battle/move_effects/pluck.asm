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
	add hl, bc
	add hl, bc ; 2 bytes
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
  db LEPPA_BERRY
	db PECHA_BERRY
	db CHERI_BERRY
  db CHESTO_BERRY
	db ASPEAR_BERRY
	db PERSIM_BERRY
  db RAWST_BERRY
	db -1

PluckBerryEffects:
	dw PluckOranBerry
	dw PluckSitrusBerry
	dw PluckLumBerry
	dw PluckLeppaBerry
	dw PluckPechaBerry
	dw PluckCheriBerry
	dw PluckChestoBerry
	dw PluckAspearBerry
	dw PluckPersimBerry
	dw PluckRawstBerry

PluckOranBerry:
	ret

PluckSitrusBerry:
	ret

PluckLumBerry:
	ret

PluckLeppaBerry:
	ret

PluckPechaBerry:
	ret

PluckCheriBerry:
	ret

PluckChestoBerry:
	ret

PluckAspearBerry:
	ret

PluckPersimBerry:
	ret

PluckRawstBerry:
	ret
