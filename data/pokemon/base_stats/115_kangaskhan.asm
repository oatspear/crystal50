	db KANGASKHAN ; 115

	db 105,  95,  80,  90,  40,  80
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kangaskhan/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, THUNDER, EARTHQUAKE, BRICK_BREAK, BULLDOZE, ICE_PUNCH, FIRE_BLAST, THUNDERPUNCH, DRAIN_PUNCH, REST, ATTRACT, FIRE_PUNCH, FACADE, SHADOW_BALL, IRON_TAIL, AVALANCHE, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, REVERSAL
	; end
