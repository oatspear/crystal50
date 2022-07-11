	db GRIMER ; 088

	db  80,  80,  50,  25,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp
	db NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/grimer/front.dimensions"
	owmoves OVERWORLD_STRENGTH
	db 27 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ROCK_SMASH, NASTY_PLOT, PROTECT, GIGA_DRAIN, ENDURE, BRICK_BREAK, DIG, MUD_SLAP, ICE_PUNCH, SLUDGE_BOMB, PAYBACK, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FACADE, SHADOW_BALL, FLAMETHROWER, THUNDERBOLT, INFESTATION
	; end
