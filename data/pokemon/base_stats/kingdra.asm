	db KINGDRA ; 230

	db  75,  95,  95,  85,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 207 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kingdra/front.dimensions"
	owmoves OVERWORLD_SURF, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL, OVERWORLD_HEADBUTT
	db 45 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, DRAGONBREATH, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, WHIRLPOOL, ICE_BEAM
	; end
