	db GIRAFARIG ; 203

	db  70,  80,  65,  85,  90,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 149 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/girafarig/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 37 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, NASTY_PLOT, CALM_MIND, PROTECT, ENDURE, THUNDER, PSYCHIC_M, MUD_SLAP, BULLDOZE, PAYBACK, DREAM_EATER, REST, ATTRACT, THIEF, DAZZLING_GLEAM, FACADE, SHADOW_BALL, IRON_TAIL, THUNDERBOLT
	; end
