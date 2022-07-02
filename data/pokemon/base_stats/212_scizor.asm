	db SCIZOR ; 212

	db  70, 130, 100,  65,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/scizor/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_STRENGTH, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 41 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, HYPER_BEAM, PROTECT, ENDURE, BRICK_BREAK, SANDSTORM, PAYBACK, IRON_DEFENSE, REST, ATTRACT, THIEF, STEEL_WING, FALSE_SWIPE, X_SCISSOR, ROOST, FURY_CUTTER, FACADE
	; end
