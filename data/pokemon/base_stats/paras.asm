	db PARAS ; 046

	db  35,  70,  55,  25,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/paras/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_FLASH, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 23 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROCK_SMASH, SUNNY_DAY, SWEET_SCENT, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, DIG, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, FURY_CUTTER, FLASH
	; end
