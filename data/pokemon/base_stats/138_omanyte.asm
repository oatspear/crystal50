	db OMANYTE ; 138

	db  35,  40, 100,  35,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/omanyte/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 29 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, WATER_PULSE, SCALD, SANDSTORM, IRON_DEFENSE, REST, ATTRACT, THIEF, FACADE, ICE_BEAM, AURORA_BEAM
	; end
