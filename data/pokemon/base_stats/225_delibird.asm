	db DELIBIRD ; 225

	db  45,  55,  45,  75,  65,  45
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 183 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/delibird/front.dimensions"
	owmoves OVERWORLD_FLY
	db 27 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, NASTY_PLOT, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, BRICK_BREAK, MUD_SLAP, ICE_PUNCH, PLUCK, PAYBACK, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FACADE, AVALANCHE, ICE_BEAM, DESTINY_BOND, AURORA_BEAM, ICE_SHARD
	; end
