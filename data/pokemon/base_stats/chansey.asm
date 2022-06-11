	db CHANSEY ; 113

	db 250,  05,  05,  50,  35, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chansey/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_HEAL
	db 37 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, HAIL, SOLARBEAM, IRON_TAIL, THUNDER, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, SANDSTORM, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, DAZZLING_GLEAM, FLASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
