	db CORSOLA ; 222

	db  65,  55,  95,  35,  65,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/corsola/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_STRENGTH, OVERWORLD_WHIRLPOOL, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 34 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, SUNNY_DAY, PROTECT, RAIN_DANCE, ENDURE, HAIL, EARTHQUAKE, PSYCHIC_M, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, WHIRLPOOL, ICE_BEAM
	; end
