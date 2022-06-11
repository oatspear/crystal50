	db GYARADOS ; 130

	db  95, 125,  79,  81,  60, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gyarados/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_STRENGTH, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 45 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, ROCK_SMASH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, DRAGONBREATH, THUNDER, SANDSTORM, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
