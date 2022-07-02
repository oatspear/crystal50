	db TOGETIC ; 176

	db  55,  40,  85,  40,  80, 105
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/togetic/front.dimensions"
	owmoves OVERWORLD_FLY, OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 33 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, CALM_MIND, SUNNY_DAY, PLAY_ROUGH, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, BRICK_BREAK, PSYCHIC_M, FIRE_BLAST, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, STEEL_WING, DAZZLING_GLEAM, ROOST, FACADE, SHADOW_BALL, FLAMETHROWER, SILVER_WIND, HEAL_BELL, DRAIN_KISS, OMINOUS_WIND
	; end
