	db BAYLEEF ; 153

	db  60,  62,  80,  60,  63,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 141 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bayleef/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, OVERWORLD_FLASH, \
	OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 33 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, SUNNY_DAY, SWEET_SCENT, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, ENERGY_BALL, MUD_SLAP, BULLDOZE, AROMATHERAPY, REST, ATTRACT, FURY_CUTTER, FACADE
	; end
