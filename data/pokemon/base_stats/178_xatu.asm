	db XATU ; 178

	db  65,  75,  70,  95,  95,  70
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 75 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/xatu/front.dimensions"
	owmoves OVERWORLD_FLY, OVERWORLD_TELEPORT
	db 39 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, CURSE, CALM_MIND, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, PSYCHIC_M, PLUCK, DREAM_EATER, REST, ATTRACT, THIEF, STEEL_WING, DAZZLING_GLEAM, ROOST, FACADE, SHADOW_BALL, SILVER_WIND, OMINOUS_WIND
	; end
