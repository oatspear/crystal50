	db MAGMAR ; 126

	db  65,  95,  57,  93, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp
	db ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magmar/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 41 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, BRICK_BREAK, PSYCHIC_M, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FACADE, IRON_TAIL, FLAMETHROWER
	; end
