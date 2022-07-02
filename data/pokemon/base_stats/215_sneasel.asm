	db SNEASEL ; 215

	db  55,  95,  55, 115,  35,  75
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp
	db NO_ITEM, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sneasel/front.dimensions"
	owmoves OVERWORLD_CUT, OVERWORLD_HEADBUTT, OVERWORLD_ROCK_SMASH, OVERWORLD_DIG
	db 35 ; energy
	db 0 ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm AERIAL_ACE, HEADBUTT, CURSE, ROCK_SMASH, NASTY_PLOT, BLIZZARD, ICY_WIND, PROTECT, ENDURE, HAIL, BRICK_BREAK, DIG, ICE_PUNCH, PAYBACK, DREAM_EATER, REST, ATTRACT, THIEF, FALSE_SWIPE, X_SCISSOR, FURY_CUTTER, FACADE, SHADOW_BALL, IRON_TAIL, AVALANCHE, ICE_BEAM, SLASH, SPITE, LOW_SWEEP, ICE_SHARD
	; end
