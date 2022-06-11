	db GRANBULL ; 210

	db  90, 120,  75,  45,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 75 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/granbull/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 37 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, THUNDER, SHADOW_BALL, MUD_SLAP, ICE_PUNCH, SLUDGE_BOMB, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, DAZZLING_GLEAM, THUNDERBOLT
	; end
