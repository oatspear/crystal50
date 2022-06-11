	db TYROGUE ; 236

	db  35,  35,  35,  35,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 91 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tyrogue/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 17 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, SUNNY_DAY, PROTECT, ENDURE, MUD_SLAP, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF
	; end
