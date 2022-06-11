	db STARMIE ; 121

	db  60,  75,  85, 115, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_FLASH, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL
	db 43 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, THUNDER, PSYCHIC_M, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, ATTRACT, DAZZLING_GLEAM, FLASH, WHIRLPOOL, THUNDERBOLT, ICE_BEAM
	; end
