	db DUGTRIO ; 051

	db  35, 100,  50, 120,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dugtrio/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 35 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, EARTHQUAKE, DIG, MUD_SLAP, SLUDGE_BOMB, REST, ATTRACT, THIEF, CUT
	; end
