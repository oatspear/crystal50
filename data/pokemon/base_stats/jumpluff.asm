	db JUMPLUFF ; 189

	db  75,  55,  70, 110,  55,  95
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jumpluff/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT
	db 38 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, SUNNY_DAY, SWEET_SCENT, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, REST, ATTRACT, DAZZLING_GLEAM
	; end
