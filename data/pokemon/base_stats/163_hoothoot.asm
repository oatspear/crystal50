	db HOOTHOOT ; 163

	db  60,  30,  30,  50,  36,  56
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoothoot/front.dimensions"
	db NO_OVERWORLD_MOVES
	db NO_OVERWORLD_MOVES
	db 21 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, CURSE, NASTY_PLOT, CALM_MIND, PROTECT, ENDURE, PSYCHIC_M, MUD_SLAP, PLUCK, DREAM_EATER, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FACADE, SHADOW_BALL, SILVER_WIND, OMINOUS_WIND
	; end
