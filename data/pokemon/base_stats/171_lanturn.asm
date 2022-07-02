	db LANTURN ; 171

	db 125,  58,  58,  67,  76,  76
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lanturn/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_FLASH, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL
	db 38 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, WILD_CHARGE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, WATER_PULSE, THUNDER, SCALD, REST, ATTRACT, DAZZLING_GLEAM, FACADE, THUNDERBOLT, ICE_BEAM
	; end
