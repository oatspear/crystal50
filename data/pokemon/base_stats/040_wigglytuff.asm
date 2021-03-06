	db WIGGLYTUFF ; 040

	db 140,  70,  45,  45,  85,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 50 ; catch rate
	db 109 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/wigglytuff/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT
	db 36 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, WILD_CHARGE, SUNNY_DAY, PLAY_ROUGH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, THUNDER, BRICK_BREAK, PSYCHIC_M, ICE_PUNCH, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, FIRE_PUNCH, DAZZLING_GLEAM, FACADE, SHADOW_BALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, HEAL_BELL, DRAIN_KISS
	; end
