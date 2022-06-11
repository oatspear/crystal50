	db STARYU ; 120

	db  30,  45,  55,  85,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/staryu/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_FLASH, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL
	db 28 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, THUNDER, PSYCHIC_M, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, DAZZLING_GLEAM, FLASH, WHIRLPOOL, THUNDERBOLT, ICE_BEAM
	; end
