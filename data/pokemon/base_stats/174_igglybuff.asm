	db IGGLYBUFF ; 174

	db  90,  30,  15,  15,  40,  20
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 39 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/igglybuff/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT
	db 17 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, WILD_CHARGE, SUNNY_DAY, PLAY_ROUGH, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, PSYCHIC_M, DREAM_EATER, REST, ATTRACT, DAZZLING_GLEAM, FACADE, SHADOW_BALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, HEAL_BELL
	; end
