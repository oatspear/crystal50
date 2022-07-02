	db CLEFFA ; 173

	db  50,  25,  28,  15,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 37 ; base exp
	db LEPPA_BERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cleffa/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_DIG
	db 18 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, CALM_MIND, SUNNY_DAY, PLAY_ROUGH, PROTECT, RAIN_DANCE, ENDURE, PSYCHIC_M, MUD_SLAP, ICE_PUNCH, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, FIRE_PUNCH, DAZZLING_GLEAM, FACADE, SHADOW_BALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, HEAL_BELL
	; end
