	db DODRIO ; 085

	db  60, 110,  70, 110,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dodrio/front.dimensions"
	db NO_OVERWORLD_MOVES
	db NO_OVERWORLD_MOVES
	db 39 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, CURSE, HYPER_BEAM, PROTECT, ENDURE, MUD_SLAP, PLUCK, PAYBACK, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FACADE
	; end