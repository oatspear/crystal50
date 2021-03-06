	db JOLTEON ; 135

	db  65,  65,  60, 130, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jolteon/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 43 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, WILD_CHARGE, ROCK_SMASH, CALM_MIND, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, THUNDER, DIG, MUD_SLAP, REST, ATTRACT, FACADE, SHADOW_BALL, IRON_TAIL, THUNDERBOLT, HEAL_BELL, THUNDER_FANG
	; end
