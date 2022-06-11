	db MANKEY ; 056

	db  40,  80,  35,  70,  35,  45
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mankey/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 25 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, SUNNY_DAY, PROTECT, ENDURE, IRON_TAIL, THUNDER, DIG, MUD_SLAP, ICE_PUNCH, SWIFT, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, THUNDERBOLT
	; end
