_Squirtbottle:
	ld hl, .SquirtbottleScript
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.SquirtbottleScript:
	reloadmappart
	special UpdateTimePals
	callasm .CheckCanUseSquirtbottle
	iffalse .SquirtbottleIlexForestScript
	farsjump WateredWeirdTreeScript

.SquirtbottleIlexForestScript:
	callasm .CheckCanUseSquirtbottleIlexForest
	iffalse .SquirtbottleNothingScript
	farsjump WateredIlexForestSudowoodoScript

.SquirtbottleNothingScript:
	jumptext .SquirtbottleNothingText

.SquirtbottleNothingText:
	text_far _SquirtbottleNothingText
	text_end

.CheckCanUseSquirtbottle:
	ld a, [wMapGroup]
	cp GROUP_ROUTE_36
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_ROUTE_36
	jr nz, .nope

.check_use_on_sudowoodo
	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_SUDOWOODO
	jr nz, .nope

	ld a, 1
	ld [wScriptVar], a
	ret

.nope
	xor a
	ld [wScriptVar], a
	ret

.CheckCanUseSquirtbottleIlexForest:
	ld a, [wMapGroup]
	cp GROUP_ILEX_FOREST_WILD_AREA
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_ILEX_FOREST_WILD_AREA
	jr nz, .nope
	jr .check_use_on_sudowoodo
