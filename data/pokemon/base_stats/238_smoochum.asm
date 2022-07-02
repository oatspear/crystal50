	db SMOOCHUM ; 238

	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp
	db RAWST_BERRY, RAWST_BERRY ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/smoochum/front.dimensions"
	db NO_OVERWORLD_MOVES
	db NO_OVERWORLD_MOVES
	db 25 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, NASTY_PLOT, CALM_MIND, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, WATER_PULSE, PSYCHIC_M, ICE_PUNCH, PAYBACK, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, THIEF, FACADE, SHADOW_BALL, ICE_BEAM, HEAL_BELL
	; end
