	db MAGBY ; 240

	db  45,  75,  37,  83,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 117 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magby/front.dimensions"
	owmoves OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 30 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, SUNNY_DAY, PROTECT, ENDURE, BRICK_BREAK, PSYCHIC_M, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FACADE, IRON_TAIL, FLAMETHROWER, WILL_O_WISP, LOW_SWEEP
	; end
