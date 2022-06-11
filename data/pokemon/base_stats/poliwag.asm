	db POLIWAG ; 060

	db  40,  50,  40,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 255 ; catch rate
	db 77 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/poliwag/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, \
	OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 25 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, PSYCHIC_M, REST, ATTRACT, THIEF, WHIRLPOOL, ICE_BEAM
	; end
