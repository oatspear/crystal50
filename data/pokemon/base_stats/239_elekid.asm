	db ELEKID ; 239

	db  45,  63,  37,  95,  65,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 106 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/elekid/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 30 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, WILD_CHARGE, ROCK_SMASH, PROTECT, RAIN_DANCE, ENDURE, BRICK_BREAK, MUD_SLAP, ICE_PUNCH, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FACADE, THUNDERBOLT, LOW_SWEEP
	; end
