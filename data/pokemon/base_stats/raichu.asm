	db RAICHU ; 026

	db  60,  90,  55, 110,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raichu/front.dimensions"
	owmoves OVERWORLD_FLASH, OVERWORLD_HEADBUTT
	db 40 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, WILD_CHARGE, NASTY_PLOT, PLAY_ROUGH, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, THUNDER, BRICK_BREAK, THUNDERPUNCH, REST, ATTRACT, THIEF, FACADE, IRON_TAIL, THUNDERBOLT
	; end
