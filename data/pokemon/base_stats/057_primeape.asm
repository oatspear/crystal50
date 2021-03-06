	db PRIMEAPE ; 057

	db  65, 105,  60,  95,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/primeape/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 37 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, HYPER_BEAM, PROTECT, ENDURE, THUNDER, EARTHQUAKE, BRICK_BREAK, DIG, MUD_SLAP, BULLDOZE, ICE_PUNCH, PAYBACK, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FACADE, BULK_UP, THUNDERBOLT, LOW_SWEEP, REVERSAL, OUTRAGE
	; end
