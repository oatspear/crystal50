	db SNORLAX ; 143

	db 160, 110,  65,  30,  65, 110
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp
	db LEFTOVERS, LEFTOVERS ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 45 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, WILD_CHARGE, ROCK_SMASH, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, SOLARBEAM, THUNDER, EARTHQUAKE, BRICK_BREAK, PSYCHIC_M, BULLDOZE, ICE_PUNCH, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FACADE, SHADOW_BALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, OUTRAGE
	; end
