	db VILEPLUME ; 045

	db  75,  80,  85,  50, 110,  90
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vileplume/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_FLASH
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, SUNNY_DAY, SWEET_SCENT, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, ENERGY_BALL, AROMATHERAPY, SLUDGE_BOMB, DRAIN_PUNCH, REST, ATTRACT, DAZZLING_GLEAM, FACADE, INFESTATION
	; end
