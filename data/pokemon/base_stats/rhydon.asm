	db RHYDON ; 112

	db 105, 130, 120,  40,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhydon/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, ROCK_SMASH, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, THUNDER, EARTHQUAKE, BRICK_BREAK, DIG, MUD_SLAP, BULLDOZE, ICE_PUNCH, SANDSTORM, FIRE_BLAST, PAYBACK, IRON_DEFENSE, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FACADE, IRON_TAIL, AVALANCHE, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
