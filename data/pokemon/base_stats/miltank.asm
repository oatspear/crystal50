	db MILTANK ; 241

	db  95,  80, 105, 100,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp
	db MOOMOO_MILK, MOOMOO_MILK ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/miltank/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_HEAL
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, SUNNY_DAY, SWEET_SCENT, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, THUNDER, EARTHQUAKE, SHADOW_BALL, MUD_SLAP, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, PLAY_ROUGH, THUNDERBOLT, ICE_BEAM
	; end
