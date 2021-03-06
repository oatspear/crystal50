	db TYRANITAR ; 248

	db 100, 134, 110,  61,  95, 100
	;   hp  atk  def  spd  sat  sdf

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tyranitar/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 50 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, NASTY_PLOT, SUNNY_DAY, BLIZZARD, HYPER_BEAM, PROTECT, ENDURE, THUNDER, EARTHQUAKE, BRICK_BREAK, DIG, BULLDOZE, ICE_PUNCH, SANDSTORM, FIRE_BLAST, PAYBACK, IRON_DEFENSE, REST, ATTRACT, FIRE_PUNCH, FACADE, IRON_TAIL, AVALANCHE, DRAGONBREATH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, ICE_FANG, OUTRAGE, FIRE_FANG, THUNDER_FANG, DRAGON_PULSE, DRAGON_DANCE
	; end
