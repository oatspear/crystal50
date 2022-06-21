	db BLISSEY ; 242

	db 255,  10,  10,  55,  75, 135
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/blissey/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_HEAL
	db 45 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, CALM_MIND, SUNNY_DAY, PLAY_ROUGH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, SOLARBEAM, THUNDER, BRICK_BREAK, PSYCHIC_M, MUD_SLAP, BULLDOZE, ICE_PUNCH, AROMATHERAPY, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, DRAIN_PUNCH, REST, ATTRACT, FIRE_PUNCH, DAZZLING_GLEAM, FACADE, SHADOW_BALL, AVALANCHE, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
