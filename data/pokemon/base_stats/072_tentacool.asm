	db TENTACOOL ; 072

	db  40,  40,  35,  70,  50, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tentacool/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_SURF, OVERWORLD_WHIRLPOOL, OVERWORLD_WATERFALL
	db 27 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, NASTY_PLOT, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, WATER_PULSE, SCALD, SLUDGE_BOMB, PAYBACK, REST, ATTRACT, HEX, DAZZLING_GLEAM, FACADE, ICE_BEAM, INFESTATION, AURORA_BEAM
	; end
