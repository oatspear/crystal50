	db PILOSWINE ; 221

	db 100, 100,  80,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 75 ; catch rate
	db 160 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/piloswine/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 37 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, HAIL, EARTHQUAKE, DIG, MUD_SLAP, BULLDOZE, SANDSTORM, REST, ATTRACT, FACADE, AVALANCHE, ICE_BEAM, ICE_FANG, ICE_SHARD
	; end
