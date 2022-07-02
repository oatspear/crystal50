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
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, PLAY_ROUGH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, THUNDER, EARTHQUAKE, BRICK_BREAK, BULLDOZE, ICE_PUNCH, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FACADE, SHADOW_BALL, IRON_TAIL, THUNDERBOLT, ICE_BEAM
	; end
