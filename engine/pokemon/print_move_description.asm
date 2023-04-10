PrintMoveName:
	ld a, [wCurSpecies]
	and a
	jr z, .no_move
	ld [wNamedObjectIndex], a
	call GetMoveName
	jp PlaceString
.no_move
	ld de, .NoMoveString
	jp PlaceString

.NoMoveString
	db "------------@"

PrintMoveDescription:
	push hl
	ld hl, MoveDescriptions
	ld a, [wCurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	jp PlaceString

INCLUDE "data/moves/descriptions.asm"
