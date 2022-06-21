	db GOLDUCK ; 055

	db  80,  82,  78,  85,  95,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golduck/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_WHIRLPOOL, \
	OVERWORLD_WATERFALL, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 41 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, CALM_MIND, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, WATER_PULSE, BRICK_BREAK, DIG, PSYCHIC_M, SCALD, MUD_SLAP, ICE_PUNCH, REST, ATTRACT, FALSE_SWIPE, FURY_CUTTER, FACADE, IRON_TAIL, ICE_BEAM
	; end
