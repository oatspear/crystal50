	db WOOPER ; 194

	db  55,  45,  45,  15,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/wooper/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 17 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, WATER_PULSE, EARTHQUAKE, DIG, SCALD, MUD_SLAP, BULLDOZE, ICE_PUNCH, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, THIEF, FACADE, IRON_TAIL, ICE_BEAM
	; end
