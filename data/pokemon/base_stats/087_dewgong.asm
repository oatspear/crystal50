	db DEWGONG ; 087

	db  90,  70,  80,  70,  70,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dewgong/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, OVERWORLD_HEADBUTT
	db 39 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, PLAY_ROUGH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, WATER_PULSE, REST, ATTRACT, THIEF, FACADE, IRON_TAIL, AVALANCHE, ICE_BEAM, AURORA_BEAM, ICE_SHARD
	; end
