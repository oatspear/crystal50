	db EXEGGUTOR ; 103

	db  95,  95,  85,  55, 125,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 212 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/exeggutor/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT
	db 44 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, CALM_MIND, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, ENERGY_BALL, PSYCHIC_M, DREAM_EATER, REST, ATTRACT, THIEF, FACADE, INFESTATION
	; end
