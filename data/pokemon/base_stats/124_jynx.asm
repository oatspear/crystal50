	db JYNX ; 124

	db  65,  50,  35,  95, 115,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp
	db RAWST_BERRY, RAWST_BERRY ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jynx/front.dimensions"
	owmoves OVERWORLD_HEADBUTT
	db 37 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, NASTY_PLOT, CALM_MIND, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, WATER_PULSE, BRICK_BREAK, PSYCHIC_M, ICE_PUNCH, PAYBACK, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, THIEF, FACADE, SHADOW_BALL, AVALANCHE, ICE_BEAM, HEAL_BELL
	; end
