	db LEDYBA ; 165

	db  40,  20,  30,  55,  40,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ledyba/front.dimensions"
	owmoves OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 22 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, SWEET_SCENT, PROTECT, GIGA_DRAIN, ENDURE, BRICK_BREAK, DIG, DRAIN_PUNCH, REST, ATTRACT, THIEF, ROOST, FACADE, STRUGGLE_BUG, BUG_BITE, SILVER_WIND, INFESTATION
	; end
