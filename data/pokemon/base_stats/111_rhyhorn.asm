	db RHYHORN ; 111

	db  80,  85,  95,  25,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 28 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, ROCK_SMASH, SUNNY_DAY, BLIZZARD, ICY_WIND, PROTECT, ENDURE, THUNDER, EARTHQUAKE, DIG, MUD_SLAP, BULLDOZE, SANDSTORM, FIRE_BLAST, PAYBACK, IRON_DEFENSE, REST, ATTRACT, FACADE, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, REVERSAL, ICE_FANG, FIRE_FANG, THUNDER_FANG
	; end
