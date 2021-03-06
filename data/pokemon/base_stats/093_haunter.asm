	db HAUNTER ; 093

	db  45,  50,  45,  95, 115,  55
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/haunter/front.dimensions"
	db NO_OVERWORLD_MOVES
	db NO_OVERWORLD_MOVES
	db 33 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, NASTY_PLOT, ICY_WIND, PROTECT, GIGA_DRAIN, ENDURE, THUNDER, PSYCHIC_M, ICE_PUNCH, SLUDGE_BOMB, PAYBACK, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, HEX, DAZZLING_GLEAM, FACADE, SHADOW_BALL, THUNDERBOLT, INFESTATION, DESTINY_BOND, OMINOUS_WIND, SPITE, WILL_O_WISP
	; end
