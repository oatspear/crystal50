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
	tmhm HEADBUTT, CURSE, ROLLOUT, SUNNY_DAY, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, SWAGGER, SLEEP_TALK, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, PLAY_ROUGH, FLASH, FLAMETHROWER
	; end
