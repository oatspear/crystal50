	db ZUBAT ; 041

	db  40,  45,  35,  55,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zubat/front.dimensions"
	db NO_OVERWORLD_MOVES
	db NO_OVERWORLD_MOVES
	db 20 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, CURSE, TOXIC, NASTY_PLOT, PROTECT, GIGA_DRAIN, ENDURE, MUD_SLAP, PLUCK, SLUDGE_BOMB, PAYBACK, REST, ATTRACT, THIEF, STEEL_WING, HEX, ROOST, FACADE, SHADOW_BALL, OMINOUS_WIND
	; end
