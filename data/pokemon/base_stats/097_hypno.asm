	db HYPNO ; 097

	db  85,  73,  70,  67,  73, 115
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hypno/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, NASTY_PLOT, CALM_MIND, HYPER_BEAM, PROTECT, ENDURE, BRICK_BREAK, PSYCHIC_M, ICE_PUNCH, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, DAZZLING_GLEAM, FACADE, SHADOW_BALL, LOW_SWEEP
	; end
