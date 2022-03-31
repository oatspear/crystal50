IsAPokemon::
; Return carry if species a is not a Pokemon.
	and a
	jr z, .NotAPokemon
	cp EGG
	jr z, .Pokemon
	cp NUM_POKEMON + 1
	jr c, .Pokemon

.NotAPokemon:
	scf
	ret

.Pokemon:
	and a
	ret

DrawBattleHPBar::
; Draw an HP bar d tiles long at hl
; Fill it up to e pixels

	push hl
	push de
	push bc

; Place 'HP:'
	ld a, $60
	ld [hli], a
	ld a, $61
	ld [hli], a

; Draw a template
	push hl
	ld a, $62 ; empty bar
.template
	ld [hli], a
	dec d
	jr nz, .template
	ld a, $6b ; bar end
	add b
	ld [hl], a
	pop hl

; Safety check # pixels
	ld a, e
	and a
	jr nz, .fill
	ld a, c
	and a
	jr z, .done
	ld e, 1

.fill
; Keep drawing tiles until pixel length is reached
	ld a, e
	sub TILE_WIDTH
	jr c, .lastbar

	ld e, a
	ld a, $6a ; full bar
	ld [hli], a
	ld a, e
	and a
	jr z, .done
	jr .fill

.lastbar
	ld a, $62  ; empty bar
	add e      ; + e
	ld [hl], a

.done
	pop bc
	pop de
	pop hl
	ret

PrepMonFrontpic::
	ld a, $1
	ld [wBoxAlignment], a

_PrepMonFrontpic::
	ld a, [wCurPartySpecies]
	call IsAPokemon
	jr c, .not_pokemon

	push hl
	ld de, vTiles2
	predef GetMonFrontpic
	pop hl
	xor a
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	xor a
	ld [wBoxAlignment], a
	ret

.not_pokemon
	xor a
	ld [wBoxAlignment], a
	inc a
	ld [wCurPartySpecies], a
	ret

PlayStereoCry::
	push af
	ld a, 1
	ld [wStereoPanningMask], a
	pop af
	call _PlayMonCry
	call WaitSFX
	ret

PlayStereoCry2::
; Don't wait for the cry to end.
; Used during pic animations.
	push af
	ld a, 1
	ld [wStereoPanningMask], a
	pop af
	jp _PlayMonCry

PlayMonCry::
	call PlayMonCry2
	call WaitSFX
	ret

PlayMonCry2::
; Don't wait for the cry to end.
	push af
	xor a
	ld [wStereoPanningMask], a
	ld [wCryTracks], a
	pop af
	call _PlayMonCry
	ret

_PlayMonCry::
	push hl
	push de
	push bc

	call GetCryIndex
	jr c, .done

	ld e, c
	ld d, b
	call PlayCry

.done
	pop bc
	pop de
	pop hl
	ret

LoadCry::
; Load cry bc.

	call GetCryIndex
	ret c

	ldh a, [hROMBank]
	push af
	ld a, BANK(PokemonCries)
	rst Bankswitch

	ld hl, PokemonCries
rept MON_CRY_LENGTH
	add hl, bc
endr

	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

	ld a, [hli]
	ld [wCryPitch], a
	ld a, [hli]
	ld [wCryPitch + 1], a
	ld a, [hli]
	ld [wCryLength], a
	ld a, [hl]
	ld [wCryLength + 1], a

	pop af
	rst Bankswitch
	and a
	ret

GetCryIndex::
	and a
	jr z, .no
	cp NUM_POKEMON + 1
	jr nc, .no

	dec a
	ld c, a
	ld b, 0
	and a
	ret

.no
	scf
	ret

PrintLevel::
; Print wTempMonLevel at hl

	ld a, [wTempMonLevel]
	ld [hl], "<LV>"
	inc hl

; How many digits?
	ld c, 2
	cp 100 ; This is distinct from MAX_LEVEL.
	jr c, Print8BitNumLeftAlign

; 3-digit numbers overwrite the :L.
	dec hl
	inc c
	jr Print8BitNumLeftAlign

PrintLevel_Force3Digits::
; Print :L and all 3 digits
	ld [hl], "<LV>"
	inc hl
	ld c, 3

Print8BitNumLeftAlign::
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	ld b, PRINTNUM_LEFTALIGN | 1
	jp PrintNum

; GetNthMove:: ; unreferenced
; 	ld hl, wListMoves_MoveIndicesBuffer
; 	ld c, a
; 	ld b, 0
; 	add hl, bc
; 	ld a, [hl]
; 	ret



KnowsFieldMove::
	; assumes prior call to GetBaseData
	; assumes overworld move in wPutativeTMHMMove
	; returns z if not, nz if true
	; call GetBaseData
	push hl
	ld hl, wBaseOverworldMoves - 1
	ld a, [wPutativeTMHMMove]
	dec a ; zero-based
.loop
	inc hl
	sub 8
	jr nc, .loop
	; a in [-8, -1]
	add 9
	; a in [1, 8]

; Shift left until we can mask the bit
	push bc
	ld c, a
	ld a, 1
.shift
	dec c
	jr z, .shifted
	add a
	jr .shift

.shifted
	and [hl]
	pop bc
	pop hl
	ret

GetBaseData::
	push bc
	push de
	push hl
	ldh a, [hROMBank]
	push af
	ld a, BANK(BaseData)
	rst Bankswitch

; Egg doesn't have BaseData
	ld a, [wCurSpecies]
	cp EGG
	jr z, .egg

; Get BaseData
	dec a
	ld bc, BASE_DATA_SIZE
	ld hl, BaseData
	call AddNTimes
	ld de, wCurBaseData
	ld bc, BASE_DATA_SIZE
	call CopyBytes
	jr .end

.egg
	ld de, UnusedEggPic

; Sprite dimensions
	ld b, $55 ; 5x5
	ld hl, wBasePicSize
	ld [hl], b

; Beta front and back sprites
; (see pokegold-spaceworld's data/pokemon/base_stats/*)
	ld hl, wBaseUnusedFrontpic
	ld [hl], e
	inc hl
	ld [hl], d
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d

.end
; Replace Pokedex # with species
	ld a, [wCurSpecies]
	ld [wBaseDexNo], a

	pop af
	rst Bankswitch
	pop hl
	pop de
	pop bc
	ret

GetCurNickname::
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames

GetNickname::
; Get nickname a from list hl.

	push hl
	push bc

	call SkipNames
	ld de, wStringBuffer1

	push de
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	pop de

	callfar CorrectNickErrors

	pop bc
	pop hl
	ret

ResetPartyEnergy::
	ld a, [wPartyCount]
	and a
	ret z

	ld b, a
	ld hl, wPartyMon1Species
	ld de, wPartyMon1MaxEnergy
.loop
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData

	ld a, [wBaseEnergy]
	ld [de], a
	inc de

	push bc
	ld bc, MON_ENERGY
	add hl, bc
	ld [hl], a
	ld bc, PARTYMON_STRUCT_LENGTH - MON_ENERGY
	add hl, bc
	pop bc

	dec b
	jr nz, .loop
	ret

ResetCurPartyMonEnergy:: ; unreferenced
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Species
	ld de, wPartyMon1MaxEnergy

	and a
	jr z, .got_mon

.loop
	add hl, bc
	inc de
	dec a
	jr nz, .loop

.got_mon
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData

	ld bc, MON_ENERGY
	add hl, bc

	ld a, [wBaseEnergy]
	ld [hl], a
	ld [de], a
	ret

RestorePartyEnergyToMax:: ; unreferenced
	ld a, [wPartyCount]
	and a
	ret z

	ld b, a
	ld hl, wPartyMon1Energy
	ld de, wPartyMon1MaxEnergy
.loop
	ld a, [de]
	ld [hl], a
	inc de

	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc

	dec b
	jr nz, .loop
	ret
