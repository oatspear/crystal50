	db MAGCARGO ; 219

	db  60,  50, 120,  30,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 154 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magcargo/front.dimensions"
	owmoves OVERWORLD_STRENGTH, OVERWORLD_FLASH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 35 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, ROCK_SMASH, SUNNY_DAY, HYPER_BEAM, PROTECT, ENDURE, SOLARBEAM, BULLDOZE, SANDSTORM, FIRE_BLAST, IRON_DEFENSE, REST, ATTRACT, FACADE, FLAMETHROWER, INFESTATION
	; end
