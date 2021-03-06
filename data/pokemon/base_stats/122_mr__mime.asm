	db MR__MIME ; 122

	db  40,  45,  65,  90, 100, 120
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp
	db NO_ITEM, LEPPA_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mr__mime/front.dimensions"
	owmoves OVERWORLD_HEADBUTT
	db 38 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, NASTY_PLOT, CALM_MIND, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, SOLARBEAM, ENERGY_BALL, THUNDER, BRICK_BREAK, PSYCHIC_M, ICE_PUNCH, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, DAZZLING_GLEAM, FACADE, SHADOW_BALL, THUNDERBOLT
	; end
