	db TOGEPI ; 175

	db  35,  20,  65,  20,  40,  65
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 74 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/togepi/front.dimensions"
	db NO_OVERWORLD_MOVES
	db NO_OVERWORLD_MOVES
	db 20 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, CALM_MIND, SUNNY_DAY, PLAY_ROUGH, PROTECT, RAIN_DANCE, ENDURE, SOLARBEAM, PSYCHIC_M, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, DAZZLING_GLEAM, FACADE, SHADOW_BALL, FLAMETHROWER, HEAL_BELL, DRAIN_KISS
	; end
