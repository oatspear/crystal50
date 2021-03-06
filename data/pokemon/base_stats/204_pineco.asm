	db PINECO ; 204

	db  50,  65,  90,  15,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pineco/front.dimensions"
	owmoves OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH
	db 24 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROCK_SMASH, SWEET_SCENT, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, DIG, PAYBACK, IRON_DEFENSE, REST, ATTRACT, FACADE, STRUGGLE_BUG, BUG_BITE
	; end
