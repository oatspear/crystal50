	db GLIGAR ; 207

	db  65,  75, 105,  85,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 35 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, PROTECT, ENDURE, BRICK_BREAK, DIG, MUD_SLAP, BULLDOZE, SLUDGE_BOMB, SANDSTORM, PAYBACK, REST, ATTRACT, THIEF, STEEL_WING, FALSE_SWIPE, X_SCISSOR, ROOST, FURY_CUTTER, FACADE, IRON_TAIL, STRUGGLE_BUG, BUG_BITE, SLASH
	; end
