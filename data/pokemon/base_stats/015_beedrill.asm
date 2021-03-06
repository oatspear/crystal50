	db BEEDRILL ; 015

	db  65,  90,  40,  75,  45,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/beedrill/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_FLASH, OVERWORLD_ROCK_SMASH
	db 32 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, CURSE, TOXIC, SUNNY_DAY, SWEET_SCENT, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SLUDGE_BOMB, PAYBACK, REST, ATTRACT, FALSE_SWIPE, X_SCISSOR, ROOST, FURY_CUTTER, FACADE, STRUGGLE_BUG, BUG_BITE, SILVER_WIND, INFESTATION
	; end
