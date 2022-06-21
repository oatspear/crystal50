	db DUNSPARCE ; 206

	db 100,  70,  70,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dunsparce/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 34 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, WILD_CHARGE, ROCK_SMASH, CALM_MIND, PROTECT, ENDURE, THUNDER, EARTHQUAKE, DIG, MUD_SLAP, BULLDOZE, DREAM_EATER, REST, ATTRACT, THIEF, HEX, ROOST, FACADE, SHADOW_BALL, IRON_TAIL, FLAMETHROWER, THUNDERBOLT
	; end
