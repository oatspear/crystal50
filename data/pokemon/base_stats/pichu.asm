	db PICHU ; 172

	db  20,  40,  15,  60,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 42 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pichu/front.dimensions"
	owmoves OVERWORLD_FLASH
	db 17 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, WILD_CHARGE, NASTY_PLOT, PLAY_ROUGH, PROTECT, RAIN_DANCE, ENDURE, THUNDERPUNCH, REST, ATTRACT, THIEF, FACADE, THUNDERBOLT
	; end
