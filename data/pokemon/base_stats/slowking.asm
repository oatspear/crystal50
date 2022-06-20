	db SLOWKING ; 199

	db  95,  75,  80,  30, 100, 110
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 70 ; catch rate
	db 164 ; base exp
	db NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/slowking/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_STRENGTH, OVERWORLD_WHIRLPOOL, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, CALM_MIND, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, WATER_PULSE, EARTHQUAKE, BRICK_BREAK, DIG, PSYCHIC_M, SCALD, BULLDOZE, ICE_PUNCH, FIRE_BLAST, IRON_DEFENSE, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, FACADE, SHADOW_BALL, IRON_TAIL, AVALANCHE, FLAMETHROWER, ICE_BEAM
	; end
