	db SKARMORY ; 227

	db  65,  80, 140,  70,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_FLY, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 38 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, PROTECT, ENDURE, MUD_SLAP, PLUCK, SANDSTORM, PAYBACK, IRON_DEFENSE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FACADE, SLASH
	; end
