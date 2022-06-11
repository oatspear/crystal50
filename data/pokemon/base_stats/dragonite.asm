	db DRAGONITE ; 149

	db  91, 134,  95,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_FLY, OVERWORLD_SURF, OVERWORLD_STRENGTH, \
	OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 50 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, IRON_TAIL, DRAGONBREATH, THUNDER, MUD_SLAP, ICE_PUNCH, SANDSTORM, FIRE_BLAST, SWIFT, THUNDERPUNCH, REST, ATTRACT, STEEL_WING, FIRE_PUNCH, FURY_CUTTER, FLY, WHIRLPOOL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
